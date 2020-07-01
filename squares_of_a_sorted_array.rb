def squares_of_sorted_array(arr)
  squares_of_array = []
  arr.each do |item|
    squares_of_array << (item * item)
  end
  squares_of_array.sort!
end

#note 
#this is a naive solution that runs with a time complexity of nlogn 
#
