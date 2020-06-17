# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)  
    intersections = []
    nums2_hash = {}
    nums2.each do |num2|
      if nums2_hash.has_key?(num2)
          nums2_hash[num2] += 1
      else
         nums2_hash[num2] = 1         
      end  
   end
    
    nums1.each do |num1|
           if nums2_hash.has_key?(num1) && !intersections.index(num1)
               intersections << num1
           end
    end  
    return intersections
end

#This is an optimized solution and runs with a time complexity of O(n) and space complexity of O(n)
#The naive or brute-force approach has time complexity of O(n^2) and space complexity of O(1)
