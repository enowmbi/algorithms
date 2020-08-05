def count_intersections(arr1,arr2)
  intersections = 0
  return intersections if arr1 == nil || arr2 == nil
  arr1.each do |item1|
    arr2.each do |item2|
      if item1 == item2
        intersections += 1
      end
    end
  end
  return intersections
end


