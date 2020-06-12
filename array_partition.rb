# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums = nums.sort
  n = nums.length / 2

  partitions = nums.each_slice(n).to_a #each_slice(n) returns an array of array of n size -- to_a

  return(partitions.first.min + partitions.last.min)
end
