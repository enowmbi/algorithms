def first_duplicate(arr)
   element_hash = {}
   arr.each do |element|
     if element_hash.has_key? element
        return element
     else
       element_hash[element] = 1
     end
   end
end
