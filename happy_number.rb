# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  num_hash = Hash.new(0)
  while(n != 1)
    n = sum_of_digits(n)
    return false if num_hash.has_key?(n)
    num_hash[n] += 1
  end
  return true
end

def sum_of_digits(num)
  sum = 0
  while num != 0
    last_digit = num % 10
    sum += last_digit**2
    num /= 10
  end
  return sum 
end






