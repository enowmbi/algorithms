def two_sum(sorted_arr,target)
  hash = {}
  sorted_arr.each do |element|
    if !hash.has_key?(element)
      hash[element] = element
    end
  end

  sorted_arr.each do |element|
    diff = target - element
    if hash.has_key?(diff)
      return [sorted_arr.index(element) + 1,sorted_arr.index(diff) + 1] #since indices are not zero based
    end
  end
end


#this is a naive solution -- simple -- takes O(n) space and O(n) time to execute
