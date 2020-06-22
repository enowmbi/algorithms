def three_sum(arr)
  arr = arr.sort!
  results = []
  0.upto(arr.length - 2) do |pointer_c|
    pointer_a = 1 + pointer_c
    pointer_b = arr.length - 1
    while(pointer_b > pointer_a)
      sum = arr[pointer_a] + arr[pointer_b] + arr[pointer_c]
      if(sum == 0)
        my_array = [arr[pointer_c],arr[pointer_a],arr[pointer_b]]
        results << my_array
        pointer_a += 1
        pointer_b -= 1
      elsif(sum > 0)
        pointer_b -= 1
      elsif(sum < 0)
        pointer_a += 1
      end
    end
  end
  return results.uniq
end
