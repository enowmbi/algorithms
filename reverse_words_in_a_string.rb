# @param {String} s
# @return {String}
def reverse_words(s)
  sentence_words = s.strip.split(/ /)
  new_sentence_words = []
  sentence_words.each do |word|
    new_sentence_words << word if word != ""
  end    
  return new_sentence_words.reverse.join(' ')     
end
