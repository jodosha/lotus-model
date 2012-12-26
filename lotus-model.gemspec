# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lotus-model'

Gem::Specification.new do |gem|
  gem.name          = 'lotus-model'
  gem.version       = Lotus::Model::VERSION
  gem.authors       = ['Luca Guidi']
  gem.email         = ['me@lucaguidi.com']
  gem.description   = %q{Lotus Model layer}
  gem.summary       = %q{Model layer for Lotus}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'sequel', '~> 3.42'
  gem.add_development_dependency 'rake',  '~> 10'
  gem.add_development_dependency 'rspec', '~> 2.12'
  gem.add_development_dependency 'sqlite3'
end
