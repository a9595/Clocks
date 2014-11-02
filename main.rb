require_relative 'clock'
require_relative 'alarm_clock'
require_relative 'reverse_clock'

class Main

  #init
  clock = Clock.new(Clock.readTimeFromFile)
  alarm = AlarmClock.new(Clock.readTimeFromFile)
  reversed = ReverseClock.new(Clock.readTimeFromFile)

  #print #1
  puts ("Clock: #{clock} \nAlarm: #{alarm} \nReversed: #{reversed} ")

  #tick
  200000.times {
    clock.tick
    alarm.tick
    reversed.tick }


  #print #2
  puts ("Clock: #{clock} \nAlarm: #{alarm} \nReversed: #{reversed}")





end