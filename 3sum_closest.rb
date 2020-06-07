def three_sum_closest(array,target)
  closest_value = array[0] + array[1] + array[2]
  array.sort!
  0.upto(array.length - 2) do |i|
    a_pointer = i + 1
    b_pointer = array.length - 1

    while(a_pointer < b_pointer)
      current_sum = array[a_pointer] + array[b_pointer] + array[i]
      if current_sum > target # then since array is sorted, decrement b_pointer , you are on the high side
        b_pointer -= 1
      else
        a_pointer += 1
      end

      if((closest_value - target).abs > (current_sum - target).abs)
        closest_value = current_sum
      end

    end

  end
  return closest_value
end
