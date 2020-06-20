#params heights(Array)
#params max_area(integer)

def max_area(heights)
 #we'll use the two pointer technique and at each iteration calculate the area(lower height * difference between pointers(=width)
  #we'll compare the area to the max_area and if higher we'll replace max_area with area. we'll increment pointers
  #we are using lower of pointer values because you may not slant the container

  max_area = 0
  pointer_a = 0
  pointer_b = heights.length - 1

  while(pointer_a < pointer_b)
    area = 0
   if(heights[pointer_a] > heights[pointer_b])
     area = heights[pointer_b] * (pointer_b - pointer_a)
     pointer_b -= 1
   else
     area = heights[pointer_a] * (pointer_b - pointer_a)
     pointer_a += 1
   end
   if area > max_area
     max_area = area
   end   
  end
  return max_area
end

