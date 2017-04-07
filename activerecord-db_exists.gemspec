# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record/db_exists'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-db_exists"
  spec.version       = ActiveRecord::DbExists::VERSION
  spec.authors       = ["Simon Hildebrandt"]
  spec.email         = ["simon@trunkplatform.com"]

  spec.summary       = %q{Rake task to determine if a database is available for a Rails app.}
  spec.description   = %q{Rake task to determine if a database is available for a Rails app.}
  spec.homepage      = "https://github.com/Trunkplatform/activerecord-db_exists"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activerecord", "<5.1", ">=4"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
