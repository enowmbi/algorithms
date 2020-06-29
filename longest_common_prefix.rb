def longest_common_prefix(words =[])
  return "" if words.empty?

  prefix = words.first

  1.upto(words.length - 1) do |i| 
    while(!words[i].start_with?(prefix))
      prefix.delete!(prefix.chars.last)
    end
  end

  return prefix

end

#given an array of words,return the longest common prefix for all words  or "" if there is no common prefix
#procedure : get the first word from the array as potential_prefix  as we iterate through the words we'll get the confirmed prefix which we'll return 
