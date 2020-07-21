def merge_sort(arr)
  if arr.length == 1
    return arr
  end
  middle = arr.length / 2
  left = merge_sort(arr[0, middle])
  right = merge_sort(arr[middle, arr.length - 1])
  merge(left,right)
end

def merge(left_arr,right_arr)
  arr = []
  left_index = right_index = 0
  while(left_index < left_arr.length && right_index < right_arr.length)
    if(left_arr[left_index] < right_arr[right_index])
       arr << left_arr[left_index]
       left_index += 1
    else
      arr << right_arr[right_index]
      right_index += 1
    end
  end

  while(left_index < left_arr.length)
    arr << left_arr[left_index]
    left_index += 1
  end

  while(right_index < right_arr.length)
    arr << right_arr[right_index]
    right_index += 1
  end

  return arr
end
