# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?
  prefix = strs.first
  1.upto(strs.length - 1) do |i|
    while(!strs[i].start_with?prefix)
      prefix[prefix.length - 1] = ''
    end
  end
    return prefix
end

#given an array of words,return the longest common prefix for all words  or "" if there is no common prefix
#procedure : get the first word from the array as potential_prefix  as we iterate through the words we'll get the confirmed prefix which we'll return 
#we could also sort by length of words and pick the first word which will be the shortest word and use it as our initial prefix and reduce the word from the end as we iterate
