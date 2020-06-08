def first_non_repeating_character(s)
 #returns a character that exists only once in the string
  hash_of_characters = {}
  s.each_char do |char|
    if hash_of_characters[char]
      hash_of_characters[char]  += 1
    else
      hash_of_characters[char] = 1
    end
 end
  result = hash_of_characters.select{|key,value| value == 1}
  return result.empty? ? "_" : result.first.first
end
