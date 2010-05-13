# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yamltest}
  s.version = "0.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gaspard Bucher"]
  s.date = %q{2010-05-13}
  s.email = %q{gaspard@teti.ch}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "Rakefile", "README.rdoc", "test/gem_test", "test/gem_test/foo.yml", "test/gem_test/simple_test.rb", "test/test_helper.rb", "test/yamltest", "test/yamltest/simple.yml", "test/yamltest_test.rb", "test/zoo", "test/zoo/complicated.yml", "lib/yamltest", "lib/yamltest/version.rb", "lib/yamltest.rb"]
  s.homepage = %q{http://github.com/zena/yamltest/tree}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{yamltest}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{yamltest lets you configure unit test with yaml documents}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
