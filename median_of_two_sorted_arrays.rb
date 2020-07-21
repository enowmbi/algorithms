# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  #merge sort and then get the middle element if odd or middle elements if even
  pointer_1 = 0
  pointer_2 = 0
  result = []
  while(pointer_1 < nums1.length && pointer_2 < nums2.length)
    if(nums1[pointer_1] < nums2[pointer_2])
      result << nums1[pointer_1]
      pointer_1 += 1
    else
      result << nums2[pointer_2]
      pointer_2 += 1
    end
  end

  while(pointer_1 < nums1.length)
    result << nums1[pointer_1]
    pointer_1 += 1
  end

  while(pointer_2 < nums2.length)
    result << nums2[pointer_2]
    pointer_2 += 1
  end    
  result_length = result.length
  if(result_length.odd?)
    median = result[result_length / 2.0]        
  else
    mid_point = result_length / 2
    median = (result[mid_point - 1] + result[mid_point]) / 2.0
  end 
  return median
end
