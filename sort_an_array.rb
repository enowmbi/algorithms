# @param {Integer[]} nums
# @return {Integer[]}
def sort_array(nums)
	return nums if nums.length == 1
	mid_point = nums.length / 2
	left = sort_array(nums[0,mid_point])
	right = sort_array(nums[mid_point, nums.length - 1 ])
	merge(left,right)    
end

def merge(left_arr,right_arr)
	result = []
	left_index = right_index = 0
	while(left_index < left_arr.length && right_index < right_arr.length)
		if(left_arr[left_index] < right_arr[right_index])
			result << left_arr[left_index]
			left_index += 1
		else
			result << right_arr[right_index]
			right_index += 1
		end
	end
	while(left_index < left_arr.length)
		result << left_arr[left_index]
		left_index += 1
	end
	while(right_index < right_arr.length)
		result << right_arr[right_index]
		right_index += 1
	end
	return result
end
