# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  return false if arr == nil
  return false if arr.length == 1
  arr.sort!
  pointer_a = 0
  pointer_b = 1
  current_diff = arr[pointer_b] - arr[pointer_a]

  while(pointer_b < arr.length)
    if (arr[pointer_b] - arr[pointer_a] != current_diff) 
      return false
    end
    pointer_a += 1
    pointer_b += 1
  end
  return true
end
