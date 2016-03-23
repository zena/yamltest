# Simple file to test installed gem

require 'test/unit'
require 'yamltest'

class TestYamltestGem < Test::Unit::TestCase
  yamltest :directory => File.dirname(__FILE__) 

  def yt_parse(key, source, context)
    source.split(//).reverse.join
  end

  yt_make
end