# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(x, y, d)
   return ((y-x.to_f)/d).ceil
end
#Note : Time complexity of O(1)
#y-x.to_f returns resulf as decimal(float) and ceil rounds it up
