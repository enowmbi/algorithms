# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if matrix == nil || matrix == []
  num_rows = matrix.length
  num_columns = matrix[0].length
  left_index = 0
  right_index = (num_rows * num_columns) - 1
  while(right_index >= left_index)
    mid_point = left_index + ((right_index - left_index) / 2)
    row = mid_point / num_columns
    column = mid_point % num_columns
    if(matrix[row][column] == target)
      return true
    elsif(matrix[row][column] > target)
      #search in left
      right_index = mid_point - 1 
    else
      #search in right
      left_index = mid_point + 1
    end        
  end
  return false   
end
