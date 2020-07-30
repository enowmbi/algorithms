# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  num_hash = {}
  a.each do |num|
    num_hash.has_key?(num) ? num_hash.delete(num) : num_hash[num] = 1
  end
  return num_hash.keys[0]
end
