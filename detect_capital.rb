# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  if word == word.capitalize || word == word.upcase || word == word.downcase
      return true
  else
      return false
  end
end
