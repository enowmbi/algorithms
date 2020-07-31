#we'll use a hash table to optimize lookup
def missing_numbers(arr)
  result = []
  return result if arr == nil || arr.empty?
  num_hash = {}
  arr.each do |num|
    if !num_hash.has_key? num
      num_hash[num] = 1
    end
  end
  1.upto(arr.size + 2) do |elem|
    result << elem unless num_hash.has_key? elem
  end
  return result
end

