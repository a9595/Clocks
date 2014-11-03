require 'test/unit'
require_relative 'reverse_clock'

class Reverse_clock_test < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information
  def setup
    #alarm time = 00:00:01
    @reverse_clock = ReverseClock.new([0, 0, 0])
  end

  def test_tick
    @reverse_clock.tick #00:00:00 --> 23:59:59

    assert_equal @reverse_clock.getTimeArrayFromClock, [23, 59, 59], "alarm doesn't work"

  end


end