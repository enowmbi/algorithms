def contains_duplicate(arr)
 return false if arr.empty?

 arr = arr.sort!   # uses quick sort from Standard library with nlogn time complexity with O(1) space complexity
 #use two pointers a and b to be able to compare two adjacent element in array
 pointer_a = 0
 pointer_b = 1
 while(pointer_b < arr.length)
   if arr[pointer_a] == arr[pointer_b]
     return true
   else
     pointer_a += 1
     pointer_b += 1
   end
 end
 return false
end
