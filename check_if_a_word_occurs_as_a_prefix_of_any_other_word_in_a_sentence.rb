# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
   if (sentence.length <= 100 && sentence.length >= 1 && search_word.length >= 1 && search_word.length <= 10)
      words = sentence.downcase.split(/ /) 
    words.each do |word|
      if word.start_with?(search_word.downcase)
        return words.index(word) + 1
      end
    end
    return -1  
   end
end
