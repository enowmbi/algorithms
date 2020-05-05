def is_palindrome(word = nil)
  if word && word.length > 1
    word.reverse == word ? true : false
  else
    false
  end
end


