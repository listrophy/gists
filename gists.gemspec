# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gists}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bradley Grzesiak"]
  s.date = %q{2010-07-31}
  s.description = %q{Since gist.github.com is such a fantastic library of random utility functions, this gem is meant to collect the best and pull them into your everyday toolbox.}
  s.email = %q{brad@bendyworks.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     ".rvmrc",
     "Gemfile",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "gists.gemspec",
     "lib/gists.rb",
     "spec/in_spec.rb",
     "spec/random_in_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/surround_spec.rb"
  ]
  s.homepage = %q{http://github.com/listrophy/gists}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A bunch of utility functions extracted from gists}
  s.test_files = [
    "spec/in_spec.rb",
     "spec/random_in_spec.rb",
     "spec/spec_helper.rb",
     "spec/surround_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
  end
end

