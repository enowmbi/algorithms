# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.each do |num|
    return num if nums.index(num) == nums.rindex(num)   
  end
end

