# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  n = n.to_s(2)
  0.upto(n.length - 1) do |i|
    if n[i] == '0'
      n[i] = '1'
    else
      n[i] = '0'
    end
  end
  return n.to_i(2)
end
