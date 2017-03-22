# encoding: utf-8

require 'rubygems'

begin
  require 'bundler'
rescue LoadError => e
  warn e.message
  warn "Run `gem install bundler` to install Bundler."
  exit -1
end

begin
  Bundler.setup(:development)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems."
  exit e.status_code
end

require 'rake'

require 'rubygems/tasks'
Gem::Tasks.new

require 'rubygems/package_task'
Gem::PackageTask.new(Gem::Specification.load('doctl.gemspec')) do |pkg|
  pkg.need_tar = true
  pkg.need_zip = false
end

require 'rdoc/task'
RDoc::Task.new
task :doc => :rdoc

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'rubocop/rake_task'
RuboCop::RakeTask.new

task :test    => :spec
task :default => :spec

desc 'Run ruby-lint on all Ruby source'
task :lint do
  Dir.glob('**/*.rb').each do |file|
    # puts file
    # puts %(ruby-lint #{file})
    # rubocop: disable Style/CommandLiteral
    puts %x(ruby-lint #{file})
  end
end

require 'rubycritic/rake_task'

RubyCritic::RakeTask.new do |task|
  # Name of RubyCritic task. Defaults to :rubycritic.
  task.name    = 'rubycritic'

  # Glob pattern to match source files. Defaults to FileList['.'].
  task.paths   = FileList['lib/aurora/**/*.rb'] + FileList['bin/**/*.rb']

  # You can pass all the options here in that are shown by "rubycritic -h" except for
  # "-p / --path" since that is set separately. Defaults to ''.
  task.options = '--deduplicate-symlinks --path critic'

  # Defaults to false
  task.verbose = true
end
