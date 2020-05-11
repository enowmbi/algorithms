class Integer 
  def to_binary
    number = self
    remainder = []
    while number > 0
      remainder << number % 2
      number = number / 2
    end
    return remainder.reverse.join('')
  end

  def prime?
    return  true if self == 2
    2.upto(Math.sqrt(self))  do |num|
      return true if self % num != 0
    end
    return false
  end 

  def factorial
    return 1 if self == 1 || self == 0
    return 2 if self == 2
    return self * (self - 1).factorial
  end

end
