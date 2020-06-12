# @param {String} s
# @return {String}
def frequency_sort(s)
  char_hash = {}
  s.each_char do |char|
    if char_hash.has_key?(char)
      char_hash[char] += 1
    else
      char_hash[char] = 1
    end        
  end
  result = ''
  sorted_char_hash = char_hash.sort_by{|key,value| value }.reverse.to_h
  sorted_char_hash.each do |key,value|
    result += key * value
  end
  return result
end
