def sort_array_by_parity(arr)
  result = arr.partition{|x| x.even?}
  return result.flatten
end
