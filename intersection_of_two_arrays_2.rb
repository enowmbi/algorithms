# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  result = []
  return result if nums1 == nil ||  nums2 == nil
  hash_nums = {}
  nums1.each do |num|
    if hash_nums.has_key? num
      hash_nums[num] += 1
    else
      hash_nums[num] = 1
    end
  end

  nums2.each do |num2|
    if hash_nums.has_key? num2
      result << num2 if hash_nums[num2] >= 1
      hash_nums[num2] -= 1
    end
  end
  return result
end

