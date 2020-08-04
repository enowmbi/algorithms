def fibonacci(n)
  return n if n <= 1
  f1 = 0
  f2 = 1
  2.upto n do 
    temp = f1 + f2
    f1 = f2
    f2 = temp
  end
  return f2
end
