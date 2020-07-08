# @param {String} s
# @return {String}
def reverse_only_letters(s)
  # use two pointer technique
  pointer_left = 0
  pointer_right = s.length - 1
  range_of_letters = Range.new("a","z")
  while(pointer_left < pointer_right)
    if(range_of_letters.include?(s[pointer_left].downcase) && range_of_letters.include?(s[pointer_right].downcase))
      temp = s[pointer_left]
      s[pointer_left] = s[pointer_right]
      s[pointer_right] = temp
      pointer_left += 1
      pointer_right -= 1
    elsif(range_of_letters.include?(s[pointer_left].downcase) && !range_of_letters.include?(s[pointer_right].downcase))
      pointer_right -= 1
    elsif(!range_of_letters.include?(s[pointer_left].downcase) && range_of_letters.include?(s[pointer_right].downcase))
      pointer_left += 1
    elsif(!range_of_letters.include?(s[pointer_left].downcase) && !range_of_letters.include?(s[pointer_right].downcase))
      pointer_left += 1
      pointer_right -= 1
    end            
  end
  return s
end
