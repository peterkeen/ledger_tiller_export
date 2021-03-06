# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rspec-mocks/all/rspec-mocks.rbi
#
# rspec-mocks-3.9.1

module RSpec
end
module RSpec::Mocks
  def self.allow_message(subject, message, opts = nil, &block); end
  def self.expect_message(subject, message, opts = nil, &block); end
  def self.setup; end
  def self.space; end
  def self.teardown; end
  def self.verify; end
  def self.with_temporary_scope; end
end
module RSpec::Mocks::ArgumentMatchers
end
class RSpec::Mocks::ArgumentMatchers::SingletonMatcher
end
class RSpec::Mocks::ArgumentMatchers::AnyArgsMatcher < RSpec::Mocks::ArgumentMatchers::SingletonMatcher
end
class RSpec::Mocks::ArgumentMatchers::AnyArgMatcher < RSpec::Mocks::ArgumentMatchers::SingletonMatcher
end
class RSpec::Mocks::ArgumentMatchers::NoArgsMatcher < RSpec::Mocks::ArgumentMatchers::SingletonMatcher
end
class RSpec::Mocks::ArgumentMatchers::BooleanMatcher < RSpec::Mocks::ArgumentMatchers::SingletonMatcher
end
class RSpec::Mocks::ArgumentMatchers::BaseHashMatcher
end
class RSpec::Mocks::ArgumentMatchers::HashIncludingMatcher < RSpec::Mocks::ArgumentMatchers::BaseHashMatcher
end
class RSpec::Mocks::ArgumentMatchers::HashExcludingMatcher < RSpec::Mocks::ArgumentMatchers::BaseHashMatcher
end
class RSpec::Mocks::ArgumentMatchers::ArrayIncludingMatcher
end
class RSpec::Mocks::ArgumentMatchers::DuckTypeMatcher
end
class RSpec::Mocks::ArgumentMatchers::InstanceOf
end
class RSpec::Mocks::ArgumentMatchers::KindOf
end
module RSpec::Support
  def self.require_rspec_mocks(f); end
end
module RSpec::Mocks::Matchers
end
module RSpec::Mocks::Matchers::Matcher
end
class RSpec::Mocks::MessageChain
  def block; end
  def chain; end
  def chain_on(object, *chain, &block); end
  def find_matching_expectation; end
  def find_matching_stub; end
  def format_chain(*chain, &blk); end
  def initialize(object, *chain, &blk); end
  def object; end
  def setup_chain; end
end
class RSpec::Mocks::ExpectChain < RSpec::Mocks::MessageChain
  def expectation(object, message, &return_block); end
  def self.expect_chain_on(object, *chain, &blk); end
end
class RSpec::Mocks::StubChain < RSpec::Mocks::MessageChain
  def expectation(object, message, &return_block); end
  def self.stub_chain_on(object, *chain, &blk); end
end
class RSpec::Mocks::MarshalExtension
  def self.patch!; end
  def self.unpatch!; end
end
class RSpec::Mocks::Matchers::HaveReceived
  def apply_constraints_to(expectation); end
  def at_least(*args); end
  def at_most(*args); end
  def capture_failure_message; end
  def count_constraint; end
  def description; end
  def disallow(type, reason = nil); end
  def does_not_match?(subject); end
  def ensure_count_unconstrained; end
  def exactly(*args); end
  def expect; end
  def expected_messages_received_in_order?; end
  def failure_message; end
  def failure_message_when_negated; end
  def initialize(method_name, &block); end
  def matches?(subject, &block); end
  def mock_proxy; end
  def name; end
  def notify_failure_message; end
  def once(*args); end
  def ordered(*args); end
  def setup_allowance(_subject, &_block); end
  def setup_any_instance_allowance(_subject, &_block); end
  def setup_any_instance_expectation(_subject, &_block); end
  def setup_any_instance_negative_expectation(_subject, &_block); end
  def setup_expectation(subject, &block); end
  def setup_negative_expectation(subject, &block); end
  def thrice(*args); end
  def time(*args); end
  def times(*args); end
  def twice(*args); end
  def with(*args); end
  include RSpec::Mocks::Matchers::Matcher
end
class RSpec::Mocks::Matchers::Receive
  def and_call_original(*args, &block); end
  def and_raise(*args, &block); end
  def and_return(*args, &block); end
  def and_throw(*args, &block); end
  def and_wrap_original(*args, &block); end
  def and_yield(*args, &block); end
  def at_least(*args, &block); end
  def at_most(*args, &block); end
  def describable; end
  def description; end
  def does_not_match?(subject, &block); end
  def exactly(*args, &block); end
  def initialize(message, block); end
  def matches?(subject, &block); end
  def move_block_to_last_customization(block); end
  def name; end
  def never(*args, &block); end
  def once(*args, &block); end
  def ordered(*args, &block); end
  def setup_allowance(subject, &block); end
  def setup_any_instance_allowance(subject, &block); end
  def setup_any_instance_expectation(subject, &block); end
  def setup_any_instance_method_substitute(subject, method, block); end
  def setup_any_instance_negative_expectation(subject, &block); end
  def setup_expectation(subject, &block); end
  def setup_method_substitute(host, method, block, *args); end
  def setup_mock_proxy_method_substitute(subject, method, block); end
  def setup_negative_expectation(subject, &block); end
  def thrice(*args, &block); end
  def time(*args, &block); end
  def times(*args, &block); end
  def twice(*args, &block); end
  def warn_if_any_instance(expression, subject); end
  def with(*args, &block); end
  include RSpec::Mocks::Matchers::Matcher
end
class RSpec::Mocks::Matchers::Receive::DefaultDescribable
  def description_for(verb); end
  def initialize(message); end
end
class RSpec::Mocks::Matchers::ReceiveMessageChain
  def and_call_original(*args, &block); end
  def and_raise(*args, &block); end
  def and_return(*args, &block); end
  def and_throw(*args, &block); end
  def and_yield(*args, &block); end
  def description; end
  def does_not_match?(*_args); end
  def formatted_chain; end
  def initialize(chain, &block); end
  def matches?(subject, &block); end
  def name; end
  def replay_customizations(chain); end
  def setup_allowance(subject, &block); end
  def setup_any_instance_allowance(subject, &block); end
  def setup_any_instance_expectation(subject, &block); end
  def setup_expectation(subject, &block); end
  def setup_negative_expectation(*_args); end
  def with(*args, &block); end
  include RSpec::Mocks::Matchers::Matcher
end
class RSpec::Mocks::Matchers::ReceiveMessages
  def any_instance_of(subject); end
  def description; end
  def does_not_match?(_subject); end
  def each_message_on(host); end
  def initialize(message_return_value_hash); end
  def matches?(subject); end
  def name; end
  def proxy_on(subject); end
  def setup_allowance(subject); end
  def setup_any_instance_allowance(subject); end
  def setup_any_instance_expectation(subject); end
  def setup_expectation(subject); end
  def setup_negative_expectation(_subject); end
  def warn_about_block; end
  include RSpec::Mocks::Matchers::Matcher
end
