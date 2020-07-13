# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  return nums.permutation(nums.length).to_a
end
