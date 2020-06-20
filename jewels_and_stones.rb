# params stones (string)
# params jewels (string)
def num_of_jewels_in_stones(jewels,stones)
  num_of_jewels = 0
  jewels.each_char do |jewel|
    stones.each_char do |stone|
      if jewel == stone
         num_of_jewels += 1
      end
    end
  end

return num_of_jewels
  
end

#this is the bruteforce approach with 
#Time complexity of O(n x m) where n = length of jewels and m = length of stones
#Space complexity of O(1) for num_of_jewels,jewel and stone to hold jewel and stone for each iteration
