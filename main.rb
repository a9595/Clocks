require_relative 'clock'

class Main

  #clock
  clock = Clock.new(Clock.readTimeFromFile)
  puts ("#{clock}")
  200000.times { clock.tick }
  puts ("#{clock}")


end