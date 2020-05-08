def binary_gap(number)
  remainder = []
  while number > 0
    remainder << number % 2
    number = number / 2
  end
  binary_number = remainder.reverse.join('')
  biggest_gap = 0
  current_gap = 0
  status ='stop'
  binary_number.reverse.each_char do |char|
    if char =='1'
      status = 'start'
      current_gap = 0
    elsif char == '0' && status =='start'
      current_gap +=1
    end
    if current_gap > biggest_gap
      biggest_gap = current_gap
    end
  end

  return biggest_gap

end



















