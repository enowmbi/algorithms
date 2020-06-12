# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  #use two pointer technique, if the array element referenced by first_pointer == that of second_pointer, delete the first element referenced by pointer since the array length has reduced, the 3rd element becomes the 2nd (referenced by 2nd pointer and you can compare against the first without changing pointer values manually) in case they are not thesame increment both pointers
  first_pointer = 0
  second_pointer = first_pointer + 1
  while(second_pointer < nums.length)
    if nums[first_pointer] == nums[second_pointer]
      nums.delete_at(first_pointer)           
    else
      first_pointer += 1
      second_pointer += 1
    end        
  end
  return nums.length    
end
