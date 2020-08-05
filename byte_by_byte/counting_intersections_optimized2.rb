def count_intersections(arr1,arr2)
  intersections  = 0
  return intersections if arr1 == nil || arr2 == nil
  hash = {}
  arr1.each do |item|
    hash[item] = 1 unless hash.has_key?(item)
  end
  arr2.each do |item2|
    intersections += 1 if hash.has_key?(item2)
  end
  return intersections
end


