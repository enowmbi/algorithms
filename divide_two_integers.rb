# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)     
  quotient = ((dividend * 1.0) / divisor).to_i if divisor != 0
  if quotient > 2**31 - 1 
    return 2**31 - 1
  elsif quotient < -2**31 
    return 2**31 - 1
  else
    return quotient
  end   

end
