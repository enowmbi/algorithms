# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  left_index = 0
  right_index = nums.length - 1
  while(right_index > left_index)
    middle = left_index + ((right_index - left_index) / 2)
    if nums[right_index] < nums[middle]
      left_index = middle + 1
    else
      right_index = middle
    end
  end
  return nums[left_index]
end
