def contain_duplicate?(array)
  hash = {}
  array.each do |item|
    if hash.key? item 
      return true
    else
      hash[item] = 1
    end
  end
  return false
end


