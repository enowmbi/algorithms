# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
    first_pointer = 0
    second_pointer = n
    new_nums = []
    while(first_pointer < n)
        new_nums << nums[first_pointer]
        new_nums << nums[second_pointer]
        first_pointer += 1
        second_pointer +=1        
    end
    return new_nums
end
