def two_sum(sorted_array,target)
#array is sorted so use two pointer method

  low = 0
  high = sorted_array.length - 1
  while(low < high)
    sum = sorted_array[low] + sorted_array[high]
    if sum == target
      return [low + 1,high + 1]
    elsif sum > target
       #you are on the high side, reduce the high pointer
       high -= 1
    else
      #you are on the low side, increase the low pointer
      low += 1
    end
  end

end
