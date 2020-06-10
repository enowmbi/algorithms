def binary_search(nums,target)
  low = 0
  high = nums.length - 1
  
  while(high >= low)
    middle = (high + low) / 2
    if target == nums[middle]
      return middle
    elsif target > nums[middle]
      #search left of target
      low = middle + 1
    else
      high = middle - 1
    end      
  end
  return -1
end
