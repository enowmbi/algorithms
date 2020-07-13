# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  result =  n.to_s(2).reverse
  zeros = Array.new(32-result.length) {"0"}

  return (result+zeros.join("")).to_i(2)
end

