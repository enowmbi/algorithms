# @param {Integer} l
# @param {Integer} r
# @return {Integer}
require "prime"
def count_prime_set_bits(l, r)
  prime_number_count = 0
  l.upto(r) do |num|
    set_bits = count_set_bits(num)
    prime_number_count += 1 if set_bits.prime?
  end
  return prime_number_count
end

def count_set_bits(num)
  num_str = num.to_s(2)
  count_of_ones = 0
  num_str.each_char do |char|
    count_of_ones += 1 if char == '1'
  end
  return count_of_ones
end
