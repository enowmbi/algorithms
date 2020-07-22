# @param {String} s
# @return {String}
def remove_duplicates(s)
  stack = []
  result = ''
  s.each_char do |char|
    if stack.empty?
      stack << char
    else
      if stack.last == char 
        stack.pop
      else
        stack << char
      end
    end
  end
  until(stack.empty?)
    result += stack.pop
  end
  return result.reverse!        
end
