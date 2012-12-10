# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paladin/version'

Gem::Specification.new do |gem|
  gem.name          = "paladin"
  gem.version       = Paladin::VERSION
  gem.authors       = ["Kelli Mohr"]
  gem.email         = ["kmohr@fulcrum.net"]
  gem.description   = "Paladin reads a file with a list of files and verifies if the files exist"
  gem.summary       = "File verification Gem"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
