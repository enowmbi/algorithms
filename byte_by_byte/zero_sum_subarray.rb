def zero_sum_subarray(arr)
  return return [] if arr == nil || arr.empty?
  return [] if arr.min > 0
  #use modified kadane's algorithm
  current_sum = arr[0]
  if arr[0] == 0 
    result << arr[0]


end


