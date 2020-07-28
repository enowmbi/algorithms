# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  char_hash = {}
  position = 0
  #creat a hash that uses position as key and the chars as values
  indices.each do |index|        
    char_hash[index] = s[position]
    position += 1
  end
  return char_hash.keys.sort.map{ |key| char_hash[key]}.join
end
