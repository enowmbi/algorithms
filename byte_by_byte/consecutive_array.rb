#Question 5 -- find length of max consecutive sequence in an array
#iterate through the array, if element's next value in sequence exist, add it exist
#we'll try to solve it in O(n) time -- linear time

def max_consecutive_array_length(arr)
  max_length = 0
  return max_length if arr == nil || arr.empty?
  arr.each do |num|
    current_length = 1
    if !arr.include?(num.pred)
      while(arr.include?(num.next))
        current_length += 1
        num = num.next
        if current_length > max_length 
          max_length = current_length
        end
      end
    end
  end
  return max_length ==  0 ? 1 : max_length 
end
