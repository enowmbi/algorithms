def array_partition(arr)
  arr = arr.sort!
  sum = 0
  arr.each_with_index do |item,index|
    if index % 2 == 0 #getting the elements at the indices which are even, will be the minimum since array is 2n
      sum += item
    end
  end
  return sum
end
