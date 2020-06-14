# @param {String} s
# @return {Integer}
def max_power(s)
  #this is similar to the longest substring problem
  previous_character = current_character = longest_character = ''
  longest_character_count = current_character_count = 0

  s.each_char do |char|
    if previous_character == char
      current_character_count += 1              
    else  
      longest_character = char
      current_character_count = 1
    end   
    previous_character = char
    if longest_character_count < current_character_count
      longest_character_count = current_character_count
    end
  end       

  return longest_character_count

end
