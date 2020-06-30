# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  jewels_hash = {}
  j.each_char do |jewel|
    jewels_hash[jewel] = 0  #since each jewel is different           
  end
  s.each_char do |stone|
    if jewels_hash.has_key?(stone)
      jewels_hash[stone] += 1
    end
  end

  return jewels_hash.values.reduce{|total_jewels,jewel| total_jewels += jewel}  

end
#note
#This solution is better than the previous 'optimized' solution because it reduces the checks to the hash since we are storing the jewels in the hash and not the stones -- the jewels are distinct so we set each jewel in the hash to 0 no need to check whether it's in the hash or not
#Time complexity - O(n)
#Space complexity - O(n) -- depends on the size of the jewels
