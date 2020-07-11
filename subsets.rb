# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  result = [] << []  
  nums.each { |n| result += result.map { |s| s + [n] } }
  return result
end


