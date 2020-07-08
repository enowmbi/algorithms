# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  right_index = nums.size - 1
  left_index = 0
  while left_index <= right_index
    middle = (right_index - left_index) / 2 + left_index
    return true if nums[middle] == target

    if nums[right_index] == nums[middle] && nums[left_index] == nums[middle]
      left_index += 1
      right_index -= 1
      next
    end
    if nums[left_index] <= nums[middle]
      if nums[left_index] <= target && target < nums[middle]
        right_index = middle - 1
      else
        left_index = middle+ 1
      end
    else
      if nums[right_index] >= target && target > nums[middle]
        left_index = middle + 1
      else
        right_index = middle - 1
      end
    end
  end
  false
end
