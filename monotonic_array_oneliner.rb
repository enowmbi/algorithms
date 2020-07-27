# @param {Integer[]} a
# @return {Boolean}
def is_monotonic(a) 
  return a == a.sort || a == a.sort.reverse
end

