# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  pointer_a = 0
  pointer_b = 1
  while(pointer_b < arr.length)
    if arr[pointer_a] == 0
      arr[pointer_a] = [0,0]
      arr.pop
    end
    pointer_a += 1
    pointer_b += 1        
  end
  arr.flatten!
end
