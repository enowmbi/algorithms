def sum(n)
  return n if n <= 1
  first_num = 0
  1.upto(n) do |i|
    temp = i + first_num
    first_num = temp
  end
  return first_num 
end

