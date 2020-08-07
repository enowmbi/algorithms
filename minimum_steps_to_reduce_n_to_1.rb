def minimum_steps(n)
  #base case 
  return 0 if n == 1
  result = minimum_steps(n - 1)
  if n % 2 == 0
    result = [result, minimum_steps(n / 2)].min 
  end
  if n % 3 == 0
    result = [result,minimum_steps(n / 3)].min
  end
  return result + 1
end
