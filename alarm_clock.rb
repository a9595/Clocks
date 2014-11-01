require_relative 'clock'

class AlarmClock < Clock

  def initialize (arr_time)
    super arr_time
    @alarm_hours = arr_time[3]
    @alarm_minutes = arr_time[4]
    @alarm_seconds = arr_time[5]
  end

  def tick
    super

    #check if ALARM
    if  @hours == @alarm_hours && @minutes == @alarm_minutes && @seconds == @alarm_seconds
      puts "#{self}  Alarm!"
    end
  end
end