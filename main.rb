require_relative 'clock'

class Main

  #reading from file
  arrTimeFromFile = Array.new
  File.open('clock.dat', 'r') do |f|
    f.each_line do |line|
      arrTimeFromFile.push(line.to_i)
    end
  end


  #clock
  clock = Clock.new(arrTimeFromFile)
  puts ("#{clock}")
  200000.times { clock.tick }
  puts ("#{clock}")


end