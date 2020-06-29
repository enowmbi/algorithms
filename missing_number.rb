# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  length = nums.length + 1
  nums_hash = {}  
  nums.each do |num|
    if(nums_hash.has_key?(num))
      nums_hash[num] += 1
    else
      nums_hash[num] = 1
    end
  end

  0.upto(length) do |i|
    if(!nums_hash.has_key?(i)) 
      return i
    end
  end

end

#notes
#create a hash to hold numbers in the array -- we use has because it takes O(1) to find numbers/keys
#go from 0 to length (length = n + 1) and if a number does not exist return it
#this solution has time complexity of O(n) -- to go through n elements in array * 1 to find it in hash
#this solution has space complexity of O(n) 

