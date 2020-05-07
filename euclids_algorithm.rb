def gcd(a,b)
  dividend, divisor = 0

  if a > b
    dividend = a
    divisor = b
  elsif b > a
    dividend = b
    divisor = a
  end

  remainder = dividend % divisor 

  while remainder >= divisor
    remainder = dividend % divisor
  end
  return remainder == 0 ? divisor : remainder 
end
