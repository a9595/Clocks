class Clock
  def initialize(h, m, s)
    # Instance variables
    @hours = h
    @minutes = m
    @seconds = s
  end

  def tick
    @seconds += 1
    if @seconds > 59
      @seconds = 0
      @minutes += 1
      if @minutes >59
        @minutes = 0
        @hours +=1
        if @hours > 23
          @hours = 0
        end
      end
    end
  end

  def to_s
    "#{@hours}:#{@minutes}:#{@seconds}"
  end


end