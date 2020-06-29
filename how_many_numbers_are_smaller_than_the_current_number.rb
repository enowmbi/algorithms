# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  results  = []
  nums.each do |current_number|
    results << numbers_greater_than_current_number(nums,current_number)
  end
  return results
end

def numbers_greater_current_number(arr,current_number)
  arr.select{|x| x < current_number }.count   
end
