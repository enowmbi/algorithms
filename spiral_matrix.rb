def spiral_order(matrix)
  row_begin = 0
  row_end = matrix.length - 1
  column_begin = 0
  column_end = matrix[0].length - 1
  direction = 0
  results = []

  while(row_begin <= row_end && column_begin <= column_end)
    if(direction == 0)
      column_begin.upto(column_end) do |i|
        results << matrix[row_begin][i]
      end
      row_begin += 1
      direction = 1
    elsif(direction == 1)
      row_begin.upto(row_end) do |j|
        results << matrix[j][column_end]
      end
      column_end -= 1
      direction = 2
    elsif(direction == 2)
      column_end.downto(column_begin) do |k|
        results << matrix[row_end][k]
      end
      row_end -= 1
      direction = 3
    elsif(direction == 3)
      row_end.downto(row_begin) do |l|
        results << matrix[l][column_begin]
      end
      column_begin += 1
      direction = 0
    end
  end
  return results
end
