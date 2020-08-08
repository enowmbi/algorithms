def single_element(arr)
  arr.each do |elem|
    return elem if arr.index(elem) == arr.rindex(elem)
  end
end
#This probably takes O(n2) time (n = arr.size)
