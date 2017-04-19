# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'helix_runtime/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "helix-rails"
  spec.version       = HelixRuntime::Rails::VERSION
  spec.authors       = ["Peter Wagenet"]
  spec.email         = ["peter.wagenet@gmail.com"]

  spec.summary       = %q{Helix for Rails}
  spec.homepage      = "https://github.com/tildeio/helix-rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "helix_runtime", ">= 0.5.0.alpha.2"
  spec.add_dependency "rails", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 1.10"
end
