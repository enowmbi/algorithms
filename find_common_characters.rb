def common_characters(array_of_strings)
  char_hash = {}
  array_of_strings[0].each do |char|
    if char_hash.has_key?(char)
      char_hash[char] += 1
    else
      char_hash[char] = 1
    end
  end

  char_frequency = Array.new(26)
  char_range = 'a'..'z'

  char_range.each do |char|
    char_frequency << char 
    char_frequency[char] = 0
  end

  common_chars = []

  array_of_strings.each do |word|
    word.each_char do |char|
      char_frequency[char] += 1
    end
  end

  return common_characters
end

=begin
explanation:
we'll create a hash to hold the characters of the first string --this will be the minimum of characters that can be found in all strings


=end
