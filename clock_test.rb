require 'test/unit'
require_relative 'clock'

class Clock_test < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information
  def setup
    @clock = Clock.new([0,0,0])
  end

  def test_initialize
    @clock.getTimeArrayFromClock.each { |time| assert_not_nil(time, "field called #{time.object_id.to_s} = nil") }
  end

  def test_tick
    test_clock = Clock.new([23, 59, 59])
    test_clock.tick
    @clock.getTimeArrayFromClock.each { |time| assert_equal(0, time, "field called #{time.object_id.to_s} = nil") }
  end

  def test_to_s
    assert_kind_of(String, @clock.to_s, 'to_s mistake')
  end

  def test_is_one_digit_number?
    assert_equal(Clock.is_one_digit_number?(1), true, 'is_one_digit_number mistake')
  end

  def test_getTimeArrayFromFile
    assert_not_equal(0, Clock.getTimeArrayFromFile.size)
  end

  def test_getTimeArrayFromClock
    assert_equal(3, @clock.getTimeArrayFromClock.size)
  end

end