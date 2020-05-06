class String
  def palindrome?
    if self && !self.empty? && self.length > 1
      return self.reverse == self ? true : false
    else
      return false
    end
  end

  def reverse_inplace!
    i =0
    j = self.length - 1
    while i < j
      temp = self[i]
      self[i] = self[j]
      self[j] = temp
      i+=1
      j-=1
    end
    return self
  end

end


