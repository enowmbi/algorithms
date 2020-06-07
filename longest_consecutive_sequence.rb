def length_of_longest_consecutive_sequence(array)
  #put all elements in a hash since hashes have constant time for operations 
  #iterate through the array and check for numbers before and numbers after each item and mark them so that you don't go back to them again
  #keep track of length, and sequence => current_length, longest_length

  hash = {}
  array.each do |elem|
    hash[elem] = elem
  end

  longest_length = 0

  array.each do |elem|
    current_length = 1
    while(hash.include?(elem.next))
      current_length += 1
      elem = elem.next
    end

    if longest_length < current_length
      longest_length = current_length
    end

  end
  return longest_length
end
