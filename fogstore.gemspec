# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fogstore/version'

Gem::Specification.new do |spec|
  spec.name          = "fogstore"
  spec.version       = Fogstore::VERSION
  spec.authors       = ["Robert Lee-Cann"]
  spec.email         = ["leeky@leeky.org.uk"]
  spec.summary       = %q{Fogstore uses Fog to backup local files to a remote location.}
  spec.description   = %q{A tool for backing up local files remotely using Amazon S3, Rackspace Cloud Files and others.}
  spec.homepage      = "https://github.com/leeky/fogstore"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
