# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  return nil unless a || a.empty?
  num_hash = {}
  a.each do |num|
    num_hash[num] = 1
  end

  1.upto(a.size + 1) do |item|
    return item if !num_hash.has_key? item 
  end

end
