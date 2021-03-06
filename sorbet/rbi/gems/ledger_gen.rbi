# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/ledger_gen/all/ledger_gen.rbi
#
# ledger_gen-0.2.0

module LedgerGen
end
class LedgerGen::Posting
  def account(account); end
  def amount(amount); end
  def amount_string; end
  def to_s; end
end
class LedgerGen::Transaction
  def cleared!; end
  def cleared_string; end
  def comment(comment); end
  def date(date); end
  def date_string; end
  def initialize(date_format = nil); end
  def payee(payee); end
  def posting(*args); end
  def to_s; end
end
class LedgerGen::Journal
  def date_format; end
  def date_format=(arg0); end
  def initialize; end
  def pretty_print(ledger_options = nil); end
  def self.build; end
  def to_s; end
  def transaction; end
end
