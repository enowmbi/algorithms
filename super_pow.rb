# @param {Integer} a
# @param {Integer[]} b
# @return {Integer}
def super_pow(a, b)
  b = b.join().to_i if b.is_a? Array
  return 1 if b == 0
  if b % 2 == 0 
    result = super_pow(a,b / 2)
    return (result * result) % 1337
  else
    return (super_pow(a,b - 1) * a) % 1337
  end
end
