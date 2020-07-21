# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
  return nums[0] if nums.length < 2
  left_index = 0
  right_index  = 1
  while(right_index < nums.length)
    if nums[left_index] == nums[right_index]
      left_index = right_index + 1
      right_index += 1
    else
      return nums[left_index]    
    end
    right_index += 1
  end
  return nums.last
end
