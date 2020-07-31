#Question 1   -- find the median of two sorted arrays arr1 = [1,3,5] and arr2 = [2,4,6] median = 3.5
# merge the two arrays, take the middle numbers and divide by 2 if resulting array is even else get the middle element if not even
def median(arr1,arr2)
  result = [] 
  return result if arr1 == nil && arr2 == nil
  pointer_1 = 0
  pointer_2 = 0

  while(pointer_1 < arr1.size && pointer_2 < arr2.size)
    if arr1[pointer_1] < arr2[pointer_2]
      result << arr1[pointer_1]
      pointer_1 += 1
    else
      result << arr2[pointer_2]
      pointer_2 += 1
    end       
  end

  while(pointer_1 < arr1.size)
    result << arr1[pointer_1]
    pointer_1 += 1  
  end  

  while(pointer_2 < arr2.size)
    result << arr2[pointer_2]
    pointer_2 += 1
  end

  mid_point = result.size / 2
  if result.size.odd?
    return result[mid_point] 
  else    
    return (result[mid_point - 1] + result[mid_point]) / 2.to_f
  end
end
