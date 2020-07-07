# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0
  right = nums.length - 1
  while(right >= left)
    middle = left + ((right - left) / 2)
    if nums[middle] == target
      return middle
    elsif nums[middle] > target
      right = middle - 1
    else 
      left = middle + 1
    end
  end
  return -1
end
