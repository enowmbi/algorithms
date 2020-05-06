class Integer 
  def to_binary
    number = self
    remainder = []
    while number > 0
      remainder << number % 2
      number = number / 2
    end
    return remainder.join('')
  end
end
