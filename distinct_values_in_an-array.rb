# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  return 0 unless a
  return a.uniq.size
end
