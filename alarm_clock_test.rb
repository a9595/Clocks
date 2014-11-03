require 'test/unit'
require_relative 'alarm_clock'

class Alarm_clock_test < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information
  def setup
    #alarm time = 00:00:01
    @alarm_clock = AlarmClock.new([0, 0, 0, 0, 0, 1])
  end

  def test_initialize
    @alarm_clock.getTimeArrayFromClock.each { |time| assert_not_nil(time, "field called #{time.object_id.to_s} = nil") }
  end

  def test_tick
    @alarm_clock.tick # 00:00:00 --> 00:00:01

    assert_equal @alarm_clock.getTimeArrayFromClock, [0, 0, 1], "alarm doesn't work"

  end


end