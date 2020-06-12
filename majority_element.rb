# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  hash_nums = {}
  nums.each do |element|
    if hash_nums.has_key?(element)
      hash_nums[element] += 1
    else
      hash_nums[element] = 1 
    end       
  end
  my_max = 0
  my_key = 0
  hash_nums.each do |key,value|
    if value > my_max
      my_max = value
      my_key = key
    end
  end
  return my_key
end
