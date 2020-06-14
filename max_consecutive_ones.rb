# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  max_consecutive_ones = 0
  current_consecutive_ones = 0
  previous_number = -1  #since input will only be 0 and 1
  nums.each do |num|
    if(previous_number == 1 && num == 1)
      current_consecutive_ones += 1
    else
      if num == 1
        current_consecutive_ones  = 1
      else
        current_consecutive_ones = 0
      end
    end
    previous_number = num
    if current_consecutive_ones > max_consecutive_ones 
      max_consecutive_ones = current_consecutive_ones
    end       

  end  
  return max_consecutive_ones
end
