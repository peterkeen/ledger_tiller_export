# coding: utf-8
# typed: strict

require 'ledger_tiller_export/version'
require 'ledger_gen'
require 'set'
require 'google_drive'
require 'csv'
require 'open3'
require 'sorbet-runtime'

module LedgerTillerExport
  class Row < T::Struct
    extend T::Sig

    const :txn_date, Date
    const :txn_id, String
    const :account, String
    const :amount, Float
    const :description, String

    sig {params(row: T::Hash[String, T.nilable(String)]).returns(Row)}
    def self.from_csv_row(row)
      new(
        txn_date: Date.strptime(T.must(row["Date"]), "%m/%d/%Y"),
        txn_id: T.must(row['Transaction ID']),
        account: T.must(row['Account']),
        amount: T.must(row["Amount"]).gsub('$', '').gsub(',', '').to_f,
        description: T.must(row['Description']).gsub(/\+? /, '').capitalize,
      )
    end
  end

  class Sheet < T::Struct
    const :spreadsheet, String
    const :worksheet, String, default: 'Transactions'
  end

  module RuleInterface
    extend T::Sig
    extend T::Helpers

    interface!

    sig {abstract.params(row: Row).returns(T.nilable(String))}
    def account_for_row(row); end
  end

  class RegexpRule
    extend T::Sig

    include T::Props
    include T::Props::Constructor

    include RuleInterface

    const :match, Regexp
    const :account, String

    sig {override.params(row: Row).returns(T.nilable(String))}
    def account_for_row(row)
      if match.match(row.description)
        return account
      end

      nil
    end
  end

  class Exporter
    extend T::Sig

    include T::Props
    include T::Props::Constructor

    const :rules, T::Array[RuleInterface]
    const :sheets, T::Array[Sheet]
    const :default_account, String
    const :ledger_pretty_print_options, String

    const :session, GoogleDrive::Session, factory: ->{GoogleDrive::Session.from_config('.config.json')}
    const :journal, LedgerGen::Journal, factory: ->{LedgerGen::Journal.new}

    sig do
      params(
        rules: T::Array[RuleInterface],
        spreadsheet: T.nilable(String),
        worksheet: T.nilable(String),
        sheets: T.nilable(T::Array[Sheet]),
        default_account: String,
        ledger_pretty_print_options: String,
        ledger_date_format: String,
      ).void
    end
    def initialize(rules:, spreadsheet: nil, worksheet: 'Transactions', sheets: [], default_account: 'Expenses:Misc', ledger_pretty_print_options: '--sort=date', ledger_date_format: '%m/%d')

      if spreadsheet && worksheet
        sheets << Sheet.new(spreadsheet: spreadsheet, worksheet: worksheet)
      end
      
      super(
        rules: rules,
        sheets: sheets,
        default_account: default_account,
        ledger_pretty_print_options: ledger_pretty_print_options,
      )

      self.journal.date_format = ledger_date_format
    end

    sig {void}
    def run
      @known_transactions = T.let(fetch_known_transactions, T.nilable(T::Set[String]))
      @known_transactions = T.must(@known_transactions)

      sheets.each do |sheet|
        worksheets = session.spreadsheet_by_key(sheet.spreadsheet).worksheets

        ws = worksheets.detect { |w| w.title == sheet.worksheet }
        raw_csv = ws.export_as_string.force_encoding('utf-8')
        csv = CSV.parse(raw_csv, headers: true)

        T.must(csv).each do |raw_row|
          row = Row.from_csv_row(raw_row.to_h)

          next if @known_transactions.include?(row.txn_id)
          next if skip_row?(row)
          journal_transaction(row)
        end
      end

      puts journal.pretty_print(ledger_pretty_print_options)
    end

    sig {params(row: Row).returns(T::Boolean)}
    def skip_row?(row)
      false
    end

    sig {returns(T::Set[String])}
    def fetch_known_transactions
      cmd = [
        'ledger',
        %q{--register-format=%(tag("tiller_id"))\n},
        'reg',
        'expr',
        'has_tag(/tiller_id/)',
      ]

      raw_tags, err, status = Open3.capture3(*cmd)

      if status.exitstatus && status.exitstatus != 0
        STDERR.puts(err)
        exit T.must(status.exitstatus)
      end

      Set.new(raw_tags.strip.split(/(\n|,)/).map(&:strip))
    end

    sig {params(row: Row).returns(String)}
    def account_for_row(row)
      rules.each do |rule|
        account = rule.account_for_row(row)
        return account if account
      end

      default_account
    end

    sig {params(row: Row).void}
    def journal_transaction(row)
      journal.transaction do |txn|
        txn.cleared!
        txn.date row.txn_date
        txn.payee row.description
        txn.comment "tiller_id: #{row.txn_id}"

        txn.posting account_for_row(row), row.amount * -1
        txn.posting row.account
      end
    end

  end
end
