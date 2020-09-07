# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
  chars = pattern.chars
  words = str.split(" ")
  return false if chars.size != words.size
  chars_words = {}
  used_words = {}
  chars.each_with_index do |char, i|
    word = words[i]
    if used_words[word].nil? && chars_words[char].nil?
      used_words[word] = true
      chars_words[char] = word
    elsif word == chars_words[char]
      next
    else
      return false
    end
  end
  true 
end
