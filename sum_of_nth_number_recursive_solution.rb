def sum(n)
  return n if n <= 1
  return n + sum(n-1)
end


