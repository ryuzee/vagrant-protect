# coding: utf-8
require File.expand_path('../lib/vagrant-protect/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "vagrant-protect"
  spec.version       = Vagrant::Protect::VERSION
  spec.authors       = ["Ryutaro YOSHIBA"]
  spec.email         = ["ryuzee@gmail.com"]
  spec.description   = %q{Protect vagrant instance from destroying}
  spec.summary       = %q{Protect vagrant instance from destroying}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files = `git ls-files`.split("\n")
  spec.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
