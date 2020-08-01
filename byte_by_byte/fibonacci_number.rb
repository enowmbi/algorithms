def fibonacci(n)
  return n if n <= 1
  num_1 = 0
  num_2 = 1
  2.upto(n) do 
    temp = num_1 + num_2
    num_1 = num_2
    num_2 = temp
  end
  return num_2
end


