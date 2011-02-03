require 'rubygems'
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "rooby"
  gem.homepage = "http://github.com/tyson/rooby"
  gem.license = "MIT"
  gem.summary = %Q{Powerful full-stack metaframework for vertical-integration of multi-component intelligence hierarchy instances.}
  gem.description = %Q{Powerful full-stack metaframework for vertical-integration of multi-component intelligence hierarchy instances.}
  gem.email = "tyson@doloreslabs.com"
  gem.authors = ["Tyson Tate"]
  gem.add_development_dependency "yard", "~> 0.6.0"
  gem.add_development_dependency "jeweler", "~> 1.5.2"
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :test

require 'yard'
YARD::Rake::YardocTask.new
