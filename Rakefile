require 'rubygems'
require 'rake/gempackagetask'
require 'rake/testtask'

require 'lib/yamltest/version'

task :default => :test

spec = Gem::Specification.new do |s|
  s.name             = 'yamltest'
  s.version          = Yamltest::Version.to_s
  s.has_rdoc         = true
  s.extra_rdoc_files = %w(README.rdoc)
  s.rdoc_options     = %w(--main README.rdoc)
  s.summary          = "yamltest lets you configure unit test with yaml documents"
  s.author           = 'Gaspard Bucher'
  s.email            = 'gaspard@teti.ch'
  s.homepage         = 'http://github.com/zena/yamltest/tree'
  s.files            = %w(README.rdoc Rakefile) + Dir.glob("{lib,test}/**/*")
  # s.executables    = ['yamltest']
  
  # s.add_dependency('gem_name', '~> 0.0.1')
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList["test/*_test.rb"]
  t.verbose = true
end

desc 'Generate the gemspec to serve this Gem from Github'
task :github do
  file = File.dirname(__FILE__) + "/#{spec.name}.gemspec"
  File.open(file, 'w') {|f| f << spec.to_ruby }
  puts "Created gemspec: #{file}"
end