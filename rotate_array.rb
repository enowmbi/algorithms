def rotate_array(arr,number_of_rotations)
  1.upto(number_of_rotations) do 
    last_element = arr.pop
    arr.unshift(last_element)
  end
  return arr
end

#this takes O(1) space 
