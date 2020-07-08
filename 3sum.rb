# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(arr)
  return [] if arr.empty? || arr.length < 3
  arr_uniq = arr.uniq  
  return [[arr_uniq[0],arr_uniq[0],arr_uniq[0]]] if arr_uniq.length == 1 && arr_uniq[0] == 0
  return [] if arr.length  == 3 && arr.sum != 0

  arr.sort!   
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
