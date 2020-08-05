def find_pairs(arr1,arr2,target)
  result = []
  return result if arr1 == nil || arr2 == nil
  arr1.each do |item1|
    arr2.each do |item2|
      result << [item1,item2] if item1 + item2 == target
    end
  end
  return result
end

#this is a naive approach - Time complexity = O(n * m) assumming n = arr1.size and m = arr2.size. It has a space complexity of O(p) where p is size of result
