#Question 32 -- find two missing number 
#assumption -- array has size n, with numbers from 1..n
def missing_numbers(arr)
  result = []
  return result if arr == nil ||arr.empty?
  1.upto(arr.length + 2) do |num|
    result << num unless arr.include? num
  end
  return result
end
