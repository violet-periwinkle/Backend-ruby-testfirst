def two_digit_string(num)
  num = num.to_s
  if num.length < 2
    num.prepend("0")
  end
  num
end
class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    seconds = @seconds % 60
    minutes = @seconds / 60
    hours = minutes / 60
    minutes = minutes % 60
    seconds = two_digit_string(seconds)
    minutes = two_digit_string(minutes)
    hours = two_digit_string(hours)
    "#{hours}:#{minutes}:#{seconds}"
  end
end