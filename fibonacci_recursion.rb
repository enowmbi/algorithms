def fibonacci(n)
  return 0 if n <= 1
  return  1 if n == 2

  fibonacci(n-2) + fibonacci(n-1) 
end
