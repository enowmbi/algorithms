# params stones (string)
# params jewels (string)
def num_of_jewels_in_stones(jewels,stones)
  num_of_jewels = 0
  stone_hash = {}
  stones.each_char do |stone|
    if !stone_hash.has_key?(stone)
      stone_hash[stone] = 1
    else
      stone_hash[stone] += 1
    end
  end

  jewels.each_char do |jewel|
    if stone_hash.has_key?(jewel)
      num_of_jewels += stone_hash[jewel]  #we are using the value in the hash , note that the values in the jewels are distinct
    end
  end

  return num_of_jewels

end

#this is an optimized solution implemented using a hash 
#Time complexity of O(max(n,m) where n = length of jewels and m = length of stones
#Space complexity of O(m) for hash of stones 
#remember: we can't buy time but we can always buy more space
