class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    convert(@seconds)
  end

  def convert sec
    hours = pad(((sec / 60) / 60).to_s)
    mins = pad(((sec / 60) % 60).to_s)
    seconds = pad((sec % 60).to_s)
    hours + ":" + mins + ":" + seconds
  end

  def pad number_string
    if number_string. length == 1
      "0" + number_string
    else
      number_string
    end
  end

end
