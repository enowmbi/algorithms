class Solution
  def valid_palindrome(str)
    pointer_a = 0
    pointer_b = str.length - 1
    while(pointer_b > pointer_a)
      if (str[pointer_a] != str[pointer_b])
        # return false
        # call helper method
        return helper_method(str,a_pointer + 1,b_pointer) || helper_method(str,a_pointer,b_pointer - 1)
      end
      pointer_a += 1
      pointer_b -= 1
    end
  end

  def helper_method(str,pointer_1,pointer_2)
    pointer_a = pointer_1
    pointer_b = pointer_2
    while(pointer_b > pointer_a)
      if (str[pointer_a] != str[pointer_b])
        # return false
        # call helper method
        return helper_method(str,a_pointer + 1,b_pointer) || helper_method(str,a_pointer,b_pointer - 1)
      end
      pointer_a += 1
      pointer_b -= 1
    end
    return true
  end

  # str.each_char do |char|
  # if is_palindrome?(str,char)
  # return true
  # else
  # return false
  # end
  # end
  # end

  # def is_palindrome?(string_of_chars, without_char)
  # copy = string_of_chars 
  # string_of_chars.each_char do |char|
  # copy.chars.delete_at(string_of_chars.index(char))
  # if (copy == copy.reverse)
  # return true
  # end
  # end
  # return false
  # end

end
