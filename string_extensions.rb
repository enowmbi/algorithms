class String
  def palindrome?
    if self && !self.empty? && self.length > 1
      return self.reverse == self ? true : false
    else
      return false
    end
  end

  def inplace_reversal!
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

  def reverse_using_stack
    if !self.empty?
      reversed_string = ''
      stack = []
      self.each_char do |char|
        stack << char
      end
      until stack.empty?
        last = stack.pop
        reversed_string += last
      end
      return reversed_string
    else
      return nil
    end
  end

  def maximum_number_of_characters
    max_char =''
    max_count =0
    character_hash = {}
    self.each_char do |char|
      if character_hash.has_key?(char)
        character_hash[char] +=1
      else
        character_hash[char] = 1
      end
      if max_count < character_hash[char]
        max_char = char
        max_count = character_hash[char]
      end

    end
    return [max_char,max_count]
  end

  def longest_consecutive_character
    max_char =''
    max_length = 0
    current_length = 0
    previous_char = ''
    longest_character_sequence = {}

    self.each_char do |char|
      if previous_char == char
        current_length += 1
      else
        current_length = 1
      end

      if max_length < current_length 
        max_length = current_length
        max_char = char
      end
      previous_char = char
    end
    longest_character_sequence[max_char] = max_length
    return longest_character_sequence
  end

  def first_recurring_character
    char_hash = {}
    self.each_char do |char|
      if char_hash.has_key?(char)
        return char
      else
        char_hash[char] = 1
      end
    end
    return nil
  end

  def titleize
    self.split(' ').collect {|word| word.capitalize}.join(" ")
  end

end
