# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  #return [nums.first,1] if nums.first != 1
  duplicate_element = 0
  missing_element = 0
  nums_hash = {}
  nums.each do |num|
    if(nums_hash.has_key?(num))
      nums_hash[num]+= 1
    else
      nums_hash[num] = 1
    end
  end

  1.upto(nums.length) do |i|
    if(nums_hash.has_key?(i))
      if(nums_hash[i] > 1)
        duplicate_element = i
      end   
    else
      missing_element = i
    end
  end
  return [duplicate_element,missing_element]

end
