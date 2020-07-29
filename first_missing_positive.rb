# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  return 1 if nums.empty?    
  max_element = nums.max.abs
  1.upto(max_element) do |num|
    if !nums.index(num)
      return num
    end
  end    
  return max_element + 1
end
