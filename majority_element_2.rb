# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  accepted_count = nums.length / 3
  occurences = {}
  nums.each do |num|
    if(occurences.has_key?(num))
      occurences[num] += 1
    else
      occurences[num] = 1
    end
  end

  results = []
  occurences.each do |x|
    if x[1] > accepted_count
      results << x[0]
    end    
  end

  return results
end
