# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  return matrix if matrix == []
  row_count = matrix.length
  column_count = matrix[0].length    
  row_start = 0
  column_start = 0
  row_end = row_count - 1
  column_end = column_count - 1    
  direction = 0
  result = []

  while(row_start <= row_end && column_start <= column_end)
    if(direction == 0)
      column_start.upto(column_end) do |column_idx|
        result << matrix[row_start][column_idx]
      end
      row_start += 1
      direction += 1

    elsif(direction == 1)
      row_start.upto(row_end) do |row_idx|
        result << matrix[row_idx][column_end]
      end
      column_end -= 1
      direction += 1               
    elsif(direction == 2)
      column_end.downto(column_start) do |column_idx|
        result << matrix[row_end][column_idx]
      end
      row_end -= 1
      direction += 1
    elsif(direction == 3)
      row_end.downto(row_start) do |row_idx|
        result << matrix[row_idx][column_start]
      end
      column_start += 1
      direction = 0
    end
  end
  return result
end
