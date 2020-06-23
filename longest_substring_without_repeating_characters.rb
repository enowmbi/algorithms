# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  longest_substring_length = 0

  a_pointer = 0
  b_pointer = 0
  char_hash = {}

  while(b_pointer < s.length)
    if !char_hash.has_key?(s[b_pointer])
      char_hash[s[b_pointer]] = 1
      current_substring_length += 1
      b_pointer += 1
      if char_hash.length > longest_substring_length
        longest_substring_length = char_hash.length
      end
    else
      char_hash.delete(s[b_pointer])
      a_pointer += 1
    end
  end

  return longest_substring_length

end

#hashset does not mean it takes O(n) space -- it's going to be constant space since we are storing unique alphabet characters the max is 26, it does not grow with the size of the array
#char_hash.length will always keep tract of longest substring
