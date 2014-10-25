require_relative 'clock'

class Main
  clock = Clock.new(1,2,59)
  puts ("#{clock}")
  clock.tick
  puts ("#{clock}")

end