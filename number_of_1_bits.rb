# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  count = 0
  n.to_s(2).each_char do |char|
    count += 1 if char == '1'           
  end
  return count
end
