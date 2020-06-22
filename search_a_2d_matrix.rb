def search_matrix(matrix,target)
  return false if(matrix.length == 0)

  rows = matrix.length
  columns = matrix[0].length

  low = 0
  high = (columns * rows) - 1
  while(high >= low)
    midpoint = (high + low) / 2
    midpoint_element = matrix[midpoint / columns][midpoint % columns]
    if(midpoint_element == target)
      return true
    elsif(midpoint_element > target)
      high = midpoint - 1
    elsif(midpoint_element < target)
      low = midpoint + 1
    end
  end
  return false


end
=begin
We'll use binary search since the matrix is sorted --a matrix is an array of arrays
we'll get the mid point element by using midpoint / columns for the row position and midpoint % columns for column position

=end
