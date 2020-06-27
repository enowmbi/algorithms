# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  hash = {}
  arr.each do |item|
    if hash.has_key?(item)
      hash[item] += 1
    else
      hash[item] = 1
    end
  end

  set = Set.new()

  hash.each do |key,value|
    set.add(value)
  end

  set.length == hash.length ? true : false 

end
