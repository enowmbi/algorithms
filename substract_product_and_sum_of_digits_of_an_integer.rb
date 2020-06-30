# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  product_of_digits = 1
  sum_of_digits  = 0
  n.to_s.each_char do |digit|
    digit_int = digit.to_i
    product_of_digits *= digit_int
    sum_of_digits += digit_int
  end
  return product_of_digits - sum_of_digits    
end
