def climbing_stairs(n)
  last_two_entries = [1,2]
  counter = 3
  while(counter <= n)
    next_fib = last_two_entries[0] + last_two_entries[1]
    last_two_entries[0] = last_two_entries[1]
    last_two_entries[1] = next_fib
    counter += 1
  end

  return n > 1 ? last_two_entries[1] : last_two_entries[0]

end
