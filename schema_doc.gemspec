# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schema_doc/version'

Gem::Specification.new do |spec|
  spec.name          = "schema_doc"
  spec.version       = SchemaDoc::VERSION
  spec.authors       = ["mizokami"]
  spec.email         = ["suzunatsu@yahoo.com"]
  spec.description   = %q{Output database schema in markdown style.}
  spec.summary       = %q{Output database schema in markdown style.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 3.2.16"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "sqlite3"
end
