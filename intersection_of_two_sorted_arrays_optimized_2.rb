def intersections(arr1,arr2)
  result = []
  return result if arr1 == nil || arr2 == nil
  pointer_1 = 0
  pointer_2 = 0
  while(pointer_1 < arr1.size && pointer_2 < arr2.size)
    if arr1[pointer_1] == arr2[pointer_2]
      result << arr1[pointer_1]
      pointer_1 += 1
      pointer_2 += 1
    elsif arr1[pointer_1] < arr2[pointer_2]
      pointer_1 += 1
    else
      pointer_2 += 1
    end
  end
  return result
end
