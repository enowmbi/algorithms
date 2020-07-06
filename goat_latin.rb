# @param {String} s
# @return {String}
def to_goat_latin(s)
  words = s.split(/ /)
  0.upto(words.count - 1) do |i|
    if words[i][0] =~ (/[^aeiou]/i)  #i => case insensitive match    
      first_char = words[i][0] 
      words[i][0] = ''
      words[i] += first_char           
    end
    words[i] += "ma"
    words[i] += 'a' * (i + 1)
  end
  s = words.join(' ')
end
