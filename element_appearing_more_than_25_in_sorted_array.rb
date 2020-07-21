# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
  appearances = {}
  arr.each do |element|
    if appearances.has_key? element
      appearances[element] += 1
    else
      appearances[element] = 1
    end
  end
  min_appearance = (arr.length * 25) / 100
  special_element = appearances.keys.select{|x| appearances[x] > min_appearance}
  return special_element[0]    
end
