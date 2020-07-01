# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
    min_element = (2**31) - 1
    nums.each do |num|
        if num < min_element
            min_element = num
        end
    end
    return min_element    
end
