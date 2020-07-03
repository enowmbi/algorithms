# @param {String} text
# @return {String}
def arrange_words(text)
  text.split(/ /).sort_by{|word| word.length}.join(' ').capitalize
end
