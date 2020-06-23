# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
    nums = nums.uniq.sort!.reverse!
    if nums.length == 3
        return nums.last
    elsif nums.length < 3
        return nums.first
    else
        return nums[2]
    end
end
