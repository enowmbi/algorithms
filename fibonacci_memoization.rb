def fibonacci(n,computed_fibs ={})
  return 0 if n <= 1
  return  1 if n == 2

  if computed_fibs[n]
    return computed_fibs[n]
  else
    computed_fibs[n] = fibonacci((n-2),computed_fibs) + fibonacci((n-1),computed_fibs) 
    return computed_fibs[n]
  end
end
