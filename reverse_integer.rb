# @param {Integer} x
# @return {Integer}
def reverse(x)
  stack = []
  sign = ''
  reverse_string = ''
  str_x = x.to_s
  str_x.each_char do |char|
    if char == '-'
      sign = char
    else
      stack << char
    end
  end
  until stack.empty? 
    reverse_string += stack.pop
  end
  result = (sign + reverse_string).to_i
  if result > 2**31 - 1 
    return 0
  elsif result < -2**31
    return 0
  else
    return result
  end
end
#note the range presented is with respect to the result after reversing the integer not to the input
