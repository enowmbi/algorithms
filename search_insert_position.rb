# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  #since array is sorted, we could use binary search
  low = 0
  high = nums.length - 1
  while(high >= low)
    middle = ((high - low) / 2)  + low
    if(nums[middle] == target)
      return middle
    elsif(nums[middle] > target)
      high = middle - 1
    else
      low = middle + 1
    end
  end

  return low  

end
