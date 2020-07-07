# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  nums_hash = {}
  nums.each do |num|
    if nums_hash.has_key? num
      nums_hash[num] += 1
    else
      nums_hash[num] = 1
    end
  end
  result = []
  nums_hash.sort_by{|k,v| v }.reverse.first(k).each do |arr|
    result << arr[0]
  end
  return result
end
