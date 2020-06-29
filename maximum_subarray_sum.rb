def max_subarray_sum(arr)
  return arr.max if arr.max < 0 # if array has only negative numbers
  return arr.sum if arr.min > 0 # returns the sum of the array items if all elements are positive integers
  current_sum = max_sum = 0  #assumming there is atleast one positive integer
  0.upto(arr.length - 1) do |i|
    current_sum += arr[i]
    if current_sum < 0
      current_sum = 0
    end
    max_sum = max_sum < current_sum ? current_sum : max_sum
  end

  return max_sum

end

#runs in O(n) time complexity and O(n) space 

def max_subarray_sum2(arr)
  return arr.max if arr.max < 0 # if array has only negative numbers
  return arr.sum if arr.min > 0 # returns the sum of the array items if all elements are positive integers
  current_sum = max_sum = 0 
  0.upto(arr.length - 1) do |i|
    if(current_sum + arr[i] > 0)
      current_sum += arr[i]
    else
      current_sum = 0
    end
    max_sum = current_sum > max_sum ? current_sum : max_sum
  end

  return max_sum

end
