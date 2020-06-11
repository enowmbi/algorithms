def backspace_string_compare(string1,string2)
 while(string1.include?'#') 
   0.upto(string1.length - 1) do |i|
      if string1[i] == '#'
        string1.sub!(string1[i],'')
        string1.sub!(string1[i - 1],'') if i > 1
      end
   end
 end

 while(string2.include?'#') 
   0.upto(string2.length - 1) do |i|
      if string2[i] == '#'
        string2.sub!(string2[i],'')
        string2.sub!(string2[i - 1],'') if i > 1
      end
   end
 end

 return string1 == string2 ? true : false
end


