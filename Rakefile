require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "gd2-ffi"
    gem.summary = %Q{gd2-ffi is ruby bindings for gd2, implemented with ffi}
    gem.description = %Q{gd2-ffi is ruby bindings for gd2, implemented with ffi}
    gem.email = "patrik.stenmark@gmail.com"
    gem.homepage = "http://github.com/spatrik/gd2-ffi"
    gem.authors = ["Patrik Stenmark"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "test #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
