# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ehiveruby/version'

Gem::Specification.new do |spec|
  spec.name          = "ehiveruby"
  spec.version       = Ehiveruby::VERSION
  spec.authors       = ["Glen Barnes"]
  spec.email         = ["barnaclebarnes@mac.com"]
  spec.description   = %q{Ruby client library for the eHive API}
  spec.summary       = %q{Ruby client for the eHive}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "httparty"
end
