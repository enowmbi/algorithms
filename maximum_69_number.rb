# @param {Integer} num
# @return {Integer}
def maximum69_number(num)
  max_sum = num
  num = num.to_s
  0.upto(num.length - 1) do |i|
    if num[i].to_i == 6
      num[i] = '9'
      max_sum =  num.to_i > max_sum ? num.to_i : max_sum
      num[i] = '6'
    end
  end
  return max_sum
end
