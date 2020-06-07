def length_of_longest_consecutive_sequence(array)
  #put all elements in a hash since hashes have constant time for operations 
  #iterate through the array and check for numbers before and numbers after each item and mark them so that you don't go back to them again
  #keep track of length, and sequence => current_length, longest_length

  hash = {}
  array.each do |elem|
    hash[elem] = elem   #all operations here take place O(n) since n-sized array x 1 = n
  end

  longest_length = 0

  array.each do |elem|
    current_length = 1
    if(!hash.include?(elem.pred)) #skip over loop because there is a smaller number to search for
      while(hash.include?(elem.next)) #check if the elem.next exists
        current_length += 1
        elem = elem.next
      end

      if longest_length < current_length
        longest_length = current_length
      end
    end
  end
  return longest_length
end
