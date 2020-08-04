def most_frequent_element(arr,k)
  return nil if arr == nil || arr.empty?
  elem_hash = {}

  arr.each do |elem|
    if elem_hash.has_key? elem
      elem_hash[elem] += 1
    else
      elem_hash[elem] = 1
    end
  end
  #sort the hash by frequency 
  elem_hash.keys.sort_by{|key,val| elem_hash[key]}.reverse[k]
end

