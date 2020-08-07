def minimum_steps_memoized(n,memo ={})
  return 0 if n == 1

  if memo[n]
    return memo[n]
  end

  result = minimum_steps_memoized(n - 1, memo)
  if n % 2 == 0 
    result = [result,minimum_steps_memoized(n / 2, memo)].min
  end
  if n % 3 == 0
    result = [result,minimum_steps_memoized(n / 3, memo)].min
  end
  memo[n] = result + 1
  return memo[n]

end



