# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)   
  #in leetcode using the difference method of arrays was probably disabled
  hash_chars = {}
  hash_chars2 = {}


  s.each_char do |char|
    if hash_chars.has_key? char
      hash_chars[char] += 1
    else
      hash_chars[char] = 1
    end
  end

  t.each_char do |char|
    if hash_chars2.has_key? char
      hash_chars2[char] += 1
    else
      hash_chars2[char] = 1
    end
  end

  diff = hash_chars2.to_a - hash_chars.to_a
  diff.flatten.first    
end
