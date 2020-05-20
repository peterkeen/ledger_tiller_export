# LedgerTillerExport

`LedgerTillerExport` is a tool to help export transactions from [Tiller](https://www.tillerhq/) into [Ledger](https://www.ledger-cli.org).
It reads the Google spreadsheet that Tiller maintains and follows rules that you define to create Ledger transactions.
It will read your Ledger file to dedupe transactions using Tiller's guids.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ledger_tiller_export'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ledger_tiller_export

## Usage

Here's a simple example script:

```ruby
require 'ledger_tiller_export'

RULES = [
  LedgerTillerExport::RegexpRule.new(match: 'McDonalds', account: 'Expenses:Food'),
  LedgerTillerExport::RegexpRule.new(match: 'DTE', account: 'Expenses:Utils:Energy'),
]

if __FILE__ == $PROGRAM_NAME
  LedgerTillerExport::Exporter.new(
    rules: RULES,
    spreadsheet: 'YourGoogleSheetId',
  ).run
end
```

If you already have existing Ledger transactions you may want to pick a start date and only export transactions that happen after that date.
You can subclass `LedgerTillerExport::Exporter` and override the `skip_row?` method:

```ruby
class MyTillerExporter < LedgerTillerExport::Exporter
  def skip_row?(row)
    return true if row.txn_date < Date.new(2020, 5, 1)

    super
  end
end
```

`LedgerTillerExport` comes with one rule type, `RegexpRule`, which simply matches on the payee of each transaction and returns the given account.
You can define your own rule types if you want to implement more interesting behavior. For example, I track checks that I've written using transactions like this:

```
2020/05/05 * Lawn Guy
    Expenses:Lawn                      $35.00
    Liabilities:Checks:SomeBank:1025
```

When the check gets cashed I write another transaction like this:

```
2020/05/10 * Check paid
    Liabilities:Checks:SomeBank:1025   $35.00
    Assets:SomeBank::Checking
```

To automatically reconcile these I have a rule in my exporter script that looks like this:

```ruby
require 'sorbet-runtime'

class CheckingAccountRule
  extend T::Sig

  include LedgerTillerExport::RuleInterface

  class CheckingAccount < T::Struct
    const :account, String
    const :check_account_prefix, String
  end

  class Check < T::Struct
    const :amount, Float
    const :check, String
  end
  
  CHECKING_ACCOUNTS = T.let([
    CheckingAccount.new(account: 'Assets:SomeBank:Checking', check_account_prefix: 'Liabilities:Checks:SomeBank'),
    CheckingAccount.new(account: 'Assets:OtherBank:Checking', check_account_prefix: 'Liabilities:Checks:OtherBank'),
  ], T::Array[CheckingAccount])

  sig {void}
  def initialize
    @outstanding_checks = fetch_outstanding_checks
  end

  sig {override.params(row: LedgerTillerExport::Row).returns(T.nilable(String))}
  def account_for_row(row)
    if row.description =~ /Check|Bill pay/i
      @outstanding_checks.each do |check|
        if row.amount.to_f.round(2) == check.amount.round(2)
          CHECKING_ACCOUNTS.each do |acct|
            if acct.account == row.account && check.check.start_with?(acct.check_account_prefix)
              return check.check
            end
          end
        end
      end
    end
  end

  # fetch all of the outstanding checks using a Ledger balance query with a custom format
  sig {returns(T::Array[Check])}
  def fetch_outstanding_checks
    cmd = [
      'ledger',
      %q{--balance-format=%(quantity(scrub(display_total))),%(account)\n},
      'bal',
      'checks',
    ]

    raw_checks, _, _ = Open3.capture3(*cmd)

    raw_checks.strip.split(/\n/).map do |raw|
      row = raw.split(/,/, 2)
      Check.new(amount: T.must(row.first).to_f, check: T.must(row.last))
    end
  end
end
```

The only required method is `account_for_row`, which either returns a `String` account name or `nil` if the rule didn't match.

This example rule will read all of the outstanding checks from Ledger using a custom balance query.
It then will match against a specific payee (`/Check|Bill pay/`) and scan across all of the outstanding checks.
If it finds one, it outputs the check account.

(Note that this uses [Sorbet](https://sorbet.org) but you don't have to do that if you don't want to.)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ledger_tiller_export. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LedgerTillerExport project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ledger_tiller_export/blob/master/CODE_OF_CONDUCT.md).
