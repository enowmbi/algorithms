# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
  sorted_nums = nums.sort.reverse
  awards_hash = {}
  0.upto(sorted_nums.length - 1) do |i|
    if i == 0
      awards_hash[sorted_nums[i]] = "Gold Medal"
    elsif i == 1
      awards_hash[sorted_nums[i]] = "Silver Medal"
    elsif i == 2
      awards_hash[sorted_nums[i]] = "Bronze Medal"
    else
      awards_hash[sorted_nums[i]] = (i + 1).to_s
    end
  end
  0.upto(nums.length - 1) do |j|
    nums[j] = awards_hash[nums[j]]
  end
  return nums         
end
