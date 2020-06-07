# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tempest/version'

Gem::Specification.new do |spec|
  spec.name          = "tempest"
  spec.version       = Tempest::VERSION
  spec.required_ruby_version = '>= 2.7.0'
  spec.authors       = ["Washington Jones"]
  spec.email         = [""]
  spec.summary       = "Gem summary"
  spec.description   = "Gem description"
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.files         = Dir["{lib}/**/*", "{lib}/**/.*", "LICENSE.txt", "Rakefile", "README.md"]
  spec.executables   << 'tempest'
  spec.require_paths = ["lib"]
end
