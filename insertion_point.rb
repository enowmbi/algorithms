def insertion_point(array,target)
  low = 0
  high = array.length - 1
  while(low < high)
    mid_point = (high + low) / 2

    if array[mid_point] == target
      return array[target]
    else
      if target > array[mid_point]
        low = mid_point + 1
      else   
        high = mid_point - 1
      end
    end
  end
  return low if target.between?(array[low],array[high])
  return low if target < array[low]
  return high + 1 if target > array[high]
end
