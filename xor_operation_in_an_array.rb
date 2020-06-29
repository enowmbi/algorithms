# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
  nums = []
  0.upto(n - 1) do |i|
    nums[i] = start + (2 * i)
  end

  return nums.reduce{|memo,num| memo ^= num}
end
