def single_number(nums)
  result  = 0
  nums.each do |num|
    result ^= num
  end

  return result

end
 #result ^= num = num if result is not number
#result ^= num = 0 if result is number 
#so if the number is there already you'll have 0 otherwise have number so the first non-zero is the single number
