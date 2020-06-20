def peak_index(arr)
  #use two pointer solution 
  pointer_first = 0
  pointer_second = 1
  pointer_third = 2

  while(pointer_third < arr.length)
    if arr[pointer_first] < arr[pointer_second] && arr[pointer_second] > arr[pointer_third]
      return pointer_second
    else
      pointer_first += 1
      pointer_second += 1
      pointer_third += 1
    end
  end
end

