# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  num_hash = {}
  nums.each do |num|
    if num_hash.has_key? num
      num_hash[num] += 1
    else
      num_hash[num] = 1
    end
  end
  return num_hash.keys.select{|key,val| num_hash[key] > 1}
end
