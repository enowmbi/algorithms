# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  result = []
  return result if nums == nil
  nums.each do |num|
    result << num if nums.index(num) == nums.rindex(num)
  end
  return result
end
