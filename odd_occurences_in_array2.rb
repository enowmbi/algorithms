# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2
  a.sort!
  #use two pointers and do slidding window technique
  pointer_a = 0
  pointer_b = 1
  while(pointer_b < a.size)
    if a[pointer_a] == a[pointer_b]
      a.delete(a[pointer_a])
    else
      pointer_a += 1
      pointer_b += 1
    end
  end
  return a[0]
end
