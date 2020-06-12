# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums = nums.sort!
  #use two pointers
  first_pointer = 0
  second_pointer = first_pointer + 1
  while(second_pointer != nil)
    if (nums[first_pointer] != nums[second_pointer])
      return nums[first_pointer]
    else
      first_pointer = second_pointer + 1
      second_pointer = second_pointer + 2
    end
  end
end
