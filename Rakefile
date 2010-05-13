require 'rubygems'
require 'rake'

require(File.join(File.dirname(__FILE__), 'lib/yamltest/version'))

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.version = Yamltest::VERSION
    gem.name = "yamltest"
    gem.summary = %Q{yamltest lets you configure unit test with yaml documents}
    gem.description = %Q{yamltest lets you configure unit test with yaml documents}
    gem.email = "gaspard@teti.ch"
    gem.homepage = "http://github.com/zena/yamltest/tree"
    gem.authors = ["Gaspard Bucher"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "yamltest #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
