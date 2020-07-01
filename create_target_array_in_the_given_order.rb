# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  target = [] 
  pointer_nums = 0
  pointer_index = 0
  while(pointer_nums < nums.length)
    target.insert(index[pointer_index],nums[pointer_nums]) 
    pointer_index += 1
    pointer_nums += 1
  end

  return target

end
