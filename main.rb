require_relative 'clock'
require_relative 'alarm_clock'

class Main

  #init
  clock = Clock.new(Clock.readTimeFromFile)
  alarm = AlarmClock.new(Clock.readTimeFromFile)
  #inverted...

  #print #1
  puts ("Clock: #{clock} \nAlarm: #{alarm} ")

  #tick
  200000.times {
    clock.tick
    alarm.tick }


  #print #2
  puts ("Clock: #{clock} \nAlarm: #{alarm} ")




end