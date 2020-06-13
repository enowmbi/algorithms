def merge_sort(arr1,arr2)
  arr3 = []
  i = 0
  j = 0
  while(i < arr1.length  && j < arr2.length)
     if arr1[i] < arr2[j]
       arr3 << arr1[i]
       i += 1
     elsif arr1[i] > arr2[j]
       arr3 << arr2[j]
       j += 1
     end
  end

    while(i < arr1.length)
     arr3 << arr1[i]
     i += 1
    end

  while(j < arr2.length)
    arr3 << arr2[j]
    j += 1
  end

  return arr3

end
