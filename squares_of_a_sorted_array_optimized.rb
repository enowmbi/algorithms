def squares_of_sorted_array(arr)
  squares_of_array = Array.new(arr.length,0)
  pointer_a = 0
  pointer_b = arr.length - 1
  (arr.length - 1).downto(0) do |i|
    if(arr[pointer_a].abs > arr[pointer_b].abs )
      squares_of_array[i] = arr[pointer_a] * arr[pointer_a]
      pointer_a += 1
    else
      squares_of_array[i] = arr[pointer_b] * arr[pointer_b]
      pointer_b -= 1
    end
  end
  return squares_of_array
end

#note 
#this is an optimized solution that runs with a time complexity of O(n)
#

