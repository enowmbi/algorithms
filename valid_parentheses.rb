def is_valid(s)
  #create a stack 
  stack = []
  s.each_char do |char|
    if char == '{' || char == '[' ||  char == '('
      #push to stack 
      stack << char
    elsif char =='}' || char ==']' || char ==')'
      # compare the character at top of stack and pop it if char matches opening parentheses
      if char =='}' && stack.last == '{'
        stack.pop
      elsif char ==']' && stack.last == '['
        stack.pop
      elsif char == ')' && stack.last == '('
        stack.pop
      else
        stack << char
      end
    end
  end
  return stack.empty? ? true : false      

end


