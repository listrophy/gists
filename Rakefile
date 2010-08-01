require 'rubygems'
require 'bundler'
Bundler.require :default, :development, :test

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "gists"
    gem.summary = %Q{A bunch of utility functions extracted from gists}
    gem.description = %Q{Since gist.github.com is such a fantastic library of random utility functions, this gem is meant to collect the best and pull them into your everyday toolbox.}
    gem.email = "brad@bendyworks.com"
    gem.homepage = "http://github.com/listrophy/gists"
    gem.authors = ["Bradley Grzesiak"]
    gem.add_development_dependency "rspec", ">= 1.3.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "gists #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
