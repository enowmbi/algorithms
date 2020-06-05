def compare_strings(str1,str2)
  str1.each_char do |char1|
    str2.each_char do |char2|
      if str2.include?(char1)
        str2.delete(char1)
        str1.delete(char1)
      end
    end
  end
  return (str1 + str2).size
end


