class Clock
  attr_reader :seconds, :hours, :minutes

  def initialize(arr_time)
    # Init and making a validation
    @hours = arr_time[0] > 23 || arr_time[0] < 0 ? 0 : arr_time[0]
    @minutes = arr_time[1] > 60 || arr_time[1] < 0 ? 0 : arr_time[1]
    @seconds = arr_time[2] > 60 || arr_time[2] < 0 ? 0 : arr_time[2]
  end

  def tick
    @seconds += 1
    if @seconds > 59
      @seconds = 0
      @minutes += 1
      if @minutes > 59
        @minutes = 0
        @hours +=1
        if @hours > 23
          @hours = 0
        end
      end
    end
  end

  def to_s
    result = ''

    #hours
    if Clock.is_one_digit_number?(@hours)
      #result = "0#{@hours}"
      result << '0' + @hours.to_s
    else
      result << @hours.to_s
    end
    result << ':'

    #minutes
    if Clock.is_one_digit_number?(@minutes)
      result << '0' + @minutes.to_s
    else
      result << @minutes.to_s
    end
    result << ':'

    #seconds
    if Clock.is_one_digit_number?(@seconds)
      result << '0' + @seconds.to_s
    else
      result << @seconds.to_s
    end

    result
  end

  def self.is_one_digit_number?(digit)
    if (digit.to_i>=0 && digit.to_i<10)
      true
    else
      false
    end

  end

  #initialise static public method to read time from file
  def self.getTimeArrayFromFile
    arrTimeFromFile = Array.new
    File.open('clock.dat', 'r') do |f|
      f.each_line do |line|
        arrTimeFromFile.push(line.to_i)
      end
    end
    arrTimeFromFile
  end

  def getTimeArrayFromClock
    arrTimeFromClock = [@hours, @minutes, @seconds]
    arrTimeFromClock
  end

end




