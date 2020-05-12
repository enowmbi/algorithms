def fibonacci(n)
  last_two = [0,1]
  counter = 3
  while(counter <= n)
    next_fib = last_two[0] +  last_two[1]
    last_two[0] = last_two[1]
    last_two[1] = next_fib
    counter += 1
  end
  return  n > 1 ? last_two[1] : last_two[0]
end
