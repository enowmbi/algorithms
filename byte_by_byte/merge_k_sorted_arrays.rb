def merge(arr1,arr2,arr3)
  sorted_arrays = [arr1,arr2, arr3].sort_by{|x| x.length}
  0.upto(sorted_arrays.size - 1) do |i|
    if i <= sorted_arrays.size - 2
      arr2 = merge_two(sorted_arrays[i],sorted_arrays[i+1])
    end
  end

