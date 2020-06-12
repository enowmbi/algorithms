# @param {String} s
# @return {String}
def reverse_words(s)
  arr_string = s.split(/ /)
  reversed_string =''
  arr_string.each do |word|
    reversed_string += "#{word.reverse} "
  end
  return  reversed_string.strip
end
