def smallest_positive_integer(array)
  sorted_array = array.sort 
  sorted_array.each do |elem|
    next_element = elem.next
    while next_element <= 0
       next_element = next_element.next
    end
    if !sorted_array.include?(next_element)
         return next_element
    end
  end
end



