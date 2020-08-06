# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)    
  result = []
  return result unless nums || nums.empty?
  previous_value = 0
  0.upto(nums.size - 1)  do |i|
    nums[i] = nums[i] + previous_value
    previous_value = nums[i]
  end
  return nums
end
