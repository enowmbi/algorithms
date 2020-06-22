class SelfDividingNumber

  def self_dividing_numbers(left,right)
    self_dividing_numbers_list = []

    left.upto(right) do |num|
      if self_dividing_number?(num)
        self_dividing_numbers_list << num
      end
    end
    return self_dividing_numbers_list
  end

  private
  def self_dividing_number?(number)
    number.to_s.each_char do |num_char|
      if (num_char == '0' || number % (num_char.to_i) > 0)
        return false
      end
    end
  end

=begin    #you could also use this to do the check
  def self_dividing_number?(number)
   num = number
    while(num > 0)
      last_digit = num % 10
      if (last_digit == 0 || num == 0 || number % last_digit > 0)
        return false
      end
      num = num / 10
    end
    return true
  end
=end

end
