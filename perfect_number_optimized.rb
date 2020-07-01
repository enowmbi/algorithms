# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  return false if num <= 1
  positive_divisors = [1] #initialize positive divisors with 1
  max_factor = Math.sqrt(num).to_i
  2.upto(max_factor) do |divisor|
    if(num % divisor == 0 && num / divisor < num)
      positive_divisors << divisor
      positive_divisors << num / divisor
    end
  end

  return positive_divisors.sum == num ? true : false

end


