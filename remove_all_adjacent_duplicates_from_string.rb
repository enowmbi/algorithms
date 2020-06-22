def remove_duplicates(str)
  stack = []
  str.each_char do |char|
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
  return stack.join()
end

#We are using a stack to remove duplicates and adjacent duplicates ."abbaca" 
