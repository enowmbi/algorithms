# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  new_nums = []
  new_nums << nums.first
  pointer1 = 0
  pointer2 = 1
  while(pointer2 < nums.length)
    if new_nums.empty?
      new_nums << nums[pointer1]   
    else
      sum = new_nums[pointer1] + nums[pointer2]
      new_nums << sum
      pointer1 += 1
      pointer2 += 1
    end

  end
  return new_nums

end
