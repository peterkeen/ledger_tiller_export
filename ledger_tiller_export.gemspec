
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ledger_tiller_export/version"

Gem::Specification.new do |spec|
  spec.name          = "ledger_tiller_export"
  spec.version       = LedgerTillerExport::VERSION
  spec.authors       = ["Pete Keen"]
  spec.email         = ["pete@petekeen.net"]

  spec.summary       = %q{Generate ledger transactions from Tiller}
  spec.description   = %q{Generate ledger transactions from Tiller}
  spec.homepage      = "https://github.com/peterkeen/ledger_tiller_export"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sorbet-runtime"
  spec.add_dependency "ledger_gen"
  spec.add_dependency "google_drive"

  spec.add_development_dependency "sorbet"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
