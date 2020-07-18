# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
	good_pairs_count = 0
	0.upto(nums.length - 1) do |i|
		1.upto(nums.length - 1) do |j|
			if nums[i] == nums[j] && i < j
				good_pairs_count += 1
			end
		end
	end
	return good_pairs_count
end
