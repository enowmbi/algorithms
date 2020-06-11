def valid_palindrome(string)
  return true if string.empty?
  alpha_numeric_downcase_string = ""

  string.each_char do |char|
    if((char =~ /[[:alpha:]]/ )|| (char =~/[[:digit:]]/))
      alpha_numeric_downcase_string += char.downcase
    end
  end

  head_pointer = 0
  tail_pointer = alpha_numeric_downcase_string.length - 1

  while(head_pointer <= tail_pointer)
    if alpha_numeric_downcase_string[head_pointer] != alpha_numeric_downcase_string[tail_pointer]
      return false
    end
    head_pointer += 1
    tail_pointer -= 1
  end
  return true
end
