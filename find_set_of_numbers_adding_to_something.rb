def find_set(arr,target)
  arr = arr.sort!
  sets = []
  arr.each do |item|
    a_pointer = 1
    b_pointer = arr.length - 1
    while(a_pointer < b_pointer - 1) #don't include the last element since it it covered in the loop
      sum = arr[a_pointer] + arr[b_pointer] + item
      if(sum == target)
        sets << [item,arr[a_pointer],arr[b_pointer]]
        a_pointer += 1
        b_pointer -= 1
      elsif(sum < target)
        a_pointer += 1
      else
        b_pointer -= 1
      end
    end
    x_pointer = 1
    while(x_pointer < arr.length - 1)
      sum2 = arr[x_pointer] + item
      if sum2 == target
        sets << [item,arr[x_pointer]]
        x_pointer += 1
      elsif sum2 > target
        break
      else
        x_pointer += 1
      end

    end
  end

  return sets
end
