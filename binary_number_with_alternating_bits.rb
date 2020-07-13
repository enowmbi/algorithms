# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  n_modified =  n.to_s(2)
  pointer_a = 0
  pointer_b = 1
  while(pointer_b < n_modified.length)
    return false if n_modified[pointer_a] == n_modified[pointer_b]
    pointer_a += 1
    pointer_b += 1
  end
  return true
end
