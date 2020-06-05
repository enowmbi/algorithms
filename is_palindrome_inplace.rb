#This approach uses O(n) for time which is really O(n/2) but we'll get rid of constants .The real benefit is in terms of space which is O(1)
def is_palindrome?(word)
  i = 0
  j = word.length - 1
  while(i < j)
    if word[i]!= word[j]
      return false
    else
      i += 1
      j -= 1
    end
  end
  return true
end
