# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/try_static/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-try_static2"
  spec.version       = Rack::TryStatic::VERSION
  spec.authors       = ["Caleb Buxton"]
  spec.email         = ["me@cpb.ca"]
  spec.description   = %q{The Recontributed Rack Middleware}
  spec.summary       = %q{The Recontributed Rack Middleware}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack", "~> 1.5"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "rspec", "~> 2.14"
end
