# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mida/version'

Gem::Specification.new do |s|
  s.name        = "mida"
  s.summary     = "A Microdata parser/extractor library"
  s.description = "A Microdata parser and extractor library which includes support for the schema.org vocabularies"
  s.version     = Mida::VERSION
  s.author      = "Lawrence Woodman"
  s.email       = "lwoodman@vlifesystems.com"
  s.homepage    = %q{http://github.com/wildtangent/mida/}
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files       = Dir['lib/**/*.rb'] + Dir['spec/**/*.rb'] + Dir['*.rdoc'] + Dir['Rakefile']
  s.executables = ['mida']
  s.extra_rdoc_files = ['README.rdoc', 'LICENCE.rdoc', 'CHANGELOG.rdoc']
  s.rdoc_options << '--main' << 'README.rdoc'
  s.add_dependency('nokogiri', '>= 1.5')
  s.add_dependency('blankslate')
  s.add_development_dependency('rspec', '>= 2.0' )
  s.add_development_dependency('bundler')
end