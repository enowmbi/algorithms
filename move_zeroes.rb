# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    nums.each do |num|
        if num == 0
            nums.delete_at(nums.index(0))
            nums.insert(nums.length,0)
        end
    end
        return nums
end
