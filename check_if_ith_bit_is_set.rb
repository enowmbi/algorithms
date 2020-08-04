def is_bit_set(number,position)
  f = 1 << position
  number = number.to_s(2) 
  result = number && f.to_s(2)
  return result
  return [number,f.to_s(2)]
end
