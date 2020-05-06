  class String
    def palindrome?
      if self && !self.empty? && self.length > 1
        return self.reverse == self ? true : false
      else
        return false
      end
    end
  end


