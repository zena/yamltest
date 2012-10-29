require File.dirname(__FILE__) + '/test_helper.rb'

# patch Hash to sort keys on inspect for consistency
class Hash
  def inspect
    res = []
    keys.map{|k| [k, k.to_s]}.sort{|a,b| a[1] <=> b[1]}.each do |k, ks|
      res << "#{k.inspect} => #{self[k].inspect}"
    end
    "{#{res.join(', ')}}"
  end
end

class TestDefaultFolder < Test::Unit::TestCase
  yamltest

  def yt_parse(key, source, context)
    eval(source)
  end

  def test_to_make_sure_tests_are_valid
    assert (respond_to?('test_simple_default') and
             (method('test_simple_default').arity == 0 ||
              method('test_simple_default').arity == -1))
  end

  yt_make
end

class TestCustomKeys < Test::Unit::TestCase
  yamltest :directory => 'zoo', :src_from_title => true

  def yt_parse(key, source, context)
    res = source.gsub('o', 'a')
    case key
    when 'res'
      res
    when 'len'
      res.length
    when 'foo'
      context['foo']
    else
      "bad test key #{key.inspect}"
    end
  end

  # This test will not be redefined by 'make_tests'
  def test_complicated_animal
    context = yt_get('context', 'complicated', 'animal')
    context['foo'] = 'bozo'
    yt_do_test('complicated', 'animal', context)
  end

  yt_make
end

class TestCustomFolder < Test::Unit::TestCase
  yamltest :directory => File.join(File.dirname(__FILE__), 'yamltest', 'other_folder')

  def yt_parse(key, source, context)
    case key
    when 'res'
      source.length
    else
      "bad test key #{key.inspect}"
    end
  end

  def test_to_make_sure_tests_are_valid
    assert respond_to?('test_bar_default')
    assert respond_to?('test_bar_hello_world')
  end

  yt_make
end
