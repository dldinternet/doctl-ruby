# -*- encoding: utf-8 -*-

require File.expand_path('lib/dldinternet/doctl/version', File.dirname(__FILE__))

Gem::Specification.new do |gem|
  gem.name          = 'doctl'
  gem.version       = DLDInternet::DOctl::VERSION
  gem.summary       = %q{DLDInternet DOctl tools}
  gem.description   = %q{DLDInternet DOctl tools}
  gem.license       = 'Apachev2'
  gem.authors       = ['Christo De Lange']
  gem.email         = 'rubygems@dldinternet.com'
  gem.homepage      = 'https://rubygems.org/gems/doctl'

  gem.files         = `git ls-files`.split($/)
  gem.files         = gem.files.select{|f| not f.match(%r'(spec|tests?|features?)/') and f.match(%r'(\.rb$|\.gemspec|bin/|Gemfile)') }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'hashie', '>= 0'
  gem.add_dependency 'nokogiri', '>= 0'
  gem.add_dependency 'paint-shortcuts', '>= 0'
  gem.add_dependency 'droplet_kit', '>= 0.3'
  gem.add_dependency 'thor', '>= 0.19.4'
  gem.add_dependency 'awesome_print', '> 0'
  gem.add_dependency 'dldinternet-mixlib-logging', '>= 0.7.0'
  gem.add_dependency 'dldinternet-mixlib-thor', '>= 0.2.0'
  gem.add_dependency 'command_line_reporter', '~> 3.3', '>= 3.3.6'

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
