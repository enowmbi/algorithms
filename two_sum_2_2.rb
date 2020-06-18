def two_sum(sorted_arr,target)
  #use two pointers; one at the start and the other at the end
  start_pointer = 0
  end_pointer = sorted_arr.length - 1
  while(end_pointer < sorted_arr.length)
    sum = sorted_arr[start_pointer] + sorted_arr[end_pointer]
    if sum == target 
      return [start_pointer + 1,end_pointer + 1]
    elsif target > sum
      start_pointer += 1  #move the start_pointer to higher element
    else
      end_pointer -= 1 #move the end_pointer to lower element
    end
  end

end

#this one takes advantage of the sorted array and uses O(1) space and O(n) time
