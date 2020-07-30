# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  a.each do |element|
    return element if a.index(element) == a.rindex(element)
  end
end
