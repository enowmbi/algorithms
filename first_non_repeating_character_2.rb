def first_non_repeating_character(str)
  str.each_char.each do |char|
    return char if str.index(char) == str.rindex(char)
  end
end

#Note
#first index of character from left to right is thesame of lastindex of character from left to right means it's non-repeating
#index gives the first index of character from left to right 
#rindex gives the first index of character from right to left or last index of character from right to left
