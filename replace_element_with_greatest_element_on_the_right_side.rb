# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  replacement = Array.new(arr.length,0)
  upper_boundary = arr.length - 1
  0.upto(arr.length - 1) do |current_position|
    replacement[current_position] = greatest_element(arr,current_position + 1,upper_boundary) 
  end

  replacement[upper_boundary] = -1
  return replacement      
end

def greatest_element(arr,start,finish)
  return arr[start,finish].max
end
