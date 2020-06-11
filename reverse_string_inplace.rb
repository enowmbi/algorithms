def reverse_string(chars)
  #return an array that has been reversed. do it with space complexity of O(1) and time complexity of O(chars.length)
  left = 0
  right = chars.length - 1
  while(right > left)
    temp = chars[left]
    chars[left]= chars[right]
    chars[right] = temp
    left += 1
    right -= 1
  end

end
