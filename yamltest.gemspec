lib=File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yamltest/version'
require 'date'

Gem::Specification.new do |s|
  s.name = "yamltest"
  s.version = Yamltest::VERSION

  s.authors = ["Gaspard Bucher", "Renaud Kern"]
  s.date = Date.today.to_s
  s.description = "yamltest lets you configure unit test with yaml documents"
  s.email = "info@teti.ch"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "History.txt",
    "Manifest.txt",
    "README.rdoc",
    "Rakefile",
    "lib/yamltest.rb",
    "lib/yamltest/version.rb",
    "test/gem_test/foo.yml",
    "test/gem_test/simple_test.rb",
    "test/test_helper.rb",
    "test/yamltest/other_folder/bar.yml",
    "test/yamltest/simple.yml",
    "test/yamltest_test.rb",
    "test/zoo/complicated.yml",
    "yamltest.gemspec"
  ]
  s.homepage = "http://github.com/zena/yamltest/tree"
  s.require_paths = ["lib"]
  s.summary = "yamltest lets you configure unit test with yaml documents"
  s.license = 'MIT'
end

