def number_of_ones(number)
  bin_number = number.to_s(2)
  count_of_ones = 0
  bin_number.each_char do |char|
    count_of_ones += 1 if char == '1'
  end
  return count_of_ones
end
