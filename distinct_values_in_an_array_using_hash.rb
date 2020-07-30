# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  return 0 unless a || a.empty?
  num_hash = {}
  a.each do |num|
    if !num_hash.has_key?(num)
      num_hash[num] = 1
    end
  end
  return num_hash.keys.size
end

