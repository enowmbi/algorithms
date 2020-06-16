def first_recurring_character(arr)
  char_hash = {}
  arr.each do |char|
    if char_hash.has_key?(char)
      return char
    else
       char_hash[char]  = 1
    end
  end
end
