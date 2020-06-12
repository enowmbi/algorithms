# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    hash_nums = {}
    nums.each do |element|
        if hash_nums.has_key?(element)
         return true
        else
           hash_nums[element] = 1            
        end
    end
    return false
end
