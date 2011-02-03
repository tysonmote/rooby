require "test/unit"
require File.expand_path(File.dirname(__FILE__) + '/../lib/rooby')

class Dude
  def self.queue( thing )
    thing
  end
end

class TestRooby < Test::Unit::TestCase
  def test_should_work
    assert_equal Dude.qeue( 1 ), 1
  end
end
