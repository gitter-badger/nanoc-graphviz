# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nanoc/graphviz/version'

Gem::Specification.new do |spec|
  spec.name          = 'nanoc-graphviz'
  spec.version       = Nanoc::Graphviz::VERSION
  spec.authors       = ['tetor']
  spec.email         = ['akihatoetsu@gmail.com']
  spec.summary       = 'nanoc graphviz filter plugin'
  spec.description   = 'nanoc graphviz filter plugin'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_runtime_dependency('nanoc', '>= 3.6.7', '< 4.0.0')

  spec.add_development_dependency 'bundler', '~> 1.6', '> 1.9'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-rg', '~> 5.1.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency 'coveralls'
end
