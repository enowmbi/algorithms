# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  frequencies = {}
  nums.each do |num|
    if(frequencies.has_key?(num))
      frequencies[num] += 1
    else
      frequencies[num] = 1
    end
  end
  duplicate_number = frequencies.find{|key,value| value > 1}
  return duplicate_number[0]
end
