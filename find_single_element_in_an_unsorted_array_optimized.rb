def single_element_optimized(arr)
  return nil unless arr
  elem_hash = {}
  arr.each do |elem|
    if elem_hash.has_key? elem
      elem_hash.delete(elem)
    else
      elem_hash[elem] = 1
    end
  end
  return elem_hash.keys.first
end

#Note -- we use a hash to hold elements and delete elements from hash if found this takes O(n) time and O(1) space
