# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  #bruteforce approach
  num_factors = 0
  return result if n == nil || n <= 0
  1.upto(n) do |i|
    num_factors += 1 if n % i == 0
  end
  return num_factors
end
