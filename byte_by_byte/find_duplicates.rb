#Question 4 : find duplicates in an array
def find_duplicates(arr)
  result = []
  return result if arr == nil || arr.empty?
  element_hash = {}
  arr.each do |element|
    if element_hash.has_key? element
      result << element unless result.include? element
    else
      element_hash[element] = 1
    end
  end
  return result
end

#takes advantage of the O(1) lookup time of hash. This solution takes O(n) time 
# if order of elements in the result matters then sort the result in that case it runs in O(nlogn) time 
# if order matters, use two pointer approach that way we'll take constant space - O(1) and nlog n time instead of nlog n time and n space as is the case if we maintain the solution above and have to sort the result.
