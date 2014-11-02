require_relative 'clock'

class ReverseClock < Clock

  def tick
    #00:00:00 --> 23:59:59
    @seconds -= 1
    if @seconds < 0
      @seconds = 59
      @minutes -= 1
      if @minutes < 0
        @minutes = 59
        @hours -=1
        if @hours < 0
          @hours = 23
        end
      end
    end
  end

end