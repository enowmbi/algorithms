# @param {String} s
# @return {String}
def reverse_only_letters(s)
  # use two pointer technique
  pointer_left = 0
  pointer_right = s.length - 1
  while(pointer_left < pointer_right)
    if(s[pointer_left] =~ /[[:alpha:]]/ && s[pointer_right] =~ /[[:alpha:]]/)
      temp = s[pointer_left]
      s[pointer_left] = s[pointer_right]
      s[pointer_right] = temp
      pointer_left += 1
      pointer_right -= 1
    elsif(s[pointer_left] =~ /[[:alpha:]]/ && s[pointer_right] =~ /[^[:alpha:]]/)
      pointer_right -= 1
    elsif(s[pointer_left] =~ /[^[:alpha:]]/ && s[pointer_right] =~ /[[:alpha:]]/)
      pointer_left += 1
    elsif(s[pointer_left] =~ /[^[:alpha:]]/ && s[pointer_right] =~ /[^[:alpha:]]/)
      pointer_left += 1
      pointer_right -= 1
    end            
  end
  return s
end
