# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    char_hash ={}
     s.each_char do |char|
         if char_hash.has_key?(char)
         char_hash[char] += 1
         else
             char_hash[char] = 1
         end
     end
  char_hash.each do |key,value|
      if value == 1
          return s.index(key)
      end
  end
    return -1
   
end
