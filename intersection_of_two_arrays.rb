# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)

  intersections = []

  nums1.each do |num1|
    nums2.each do |num2|
      if num1 == num2 && !intersections.index(num1)
        intersections << num1
      end
    end
  end
  return intersections
end
