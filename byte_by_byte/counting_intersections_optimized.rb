def count_intersections(arr1,arr2)
  intersections = 0 
  return intersections if arr1 == nil || arr2 == nil
  set_1 = Set.new(arr1)
  set_2 = Set.new(arr2)
  return (set_1.intersection(set_2)).count
end

#Note
#This algorithm runs in linear time O(arr1.size + arr2.size) and space complexity of O(set_1.size + set_2.size)
#this is better than brute force approach with O(n2) time complexity
#We are taking advantage of the fact that arrays are sorted and no duplicates found
