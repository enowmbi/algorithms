def print_matrix(arr,row_count,column_count)
  row_begin = 0
  row_end = row_count - 1
  column_begin = 0
  column_end = column_count - 1
  direction = 0
  results  =[]

  while(row_end >= row_begin && column_end >= column_begin)
    if(direction == 0)
      row_begin.upto(column_end) do |i|
        results << arr[row_begin][i]
      end
      row_begin += 1
      direction = 1
    elsif(direction == 1)
      row_begin.upto(row_end) do |j|
        results << arr[j][column_end]
      end
      column_end -= 1
      direction = 2
    elsif(direction == 2)
      column_end.downto(column_begin) do |k|
        results << arr[row_end][k]
      end
      row_end -= 1
      direction = 3
    elsif (direction == 3)
      row_end.downto(row_begin) do |l|
        results << arr[l][column_begin]
      end
      column_begin += 1
      direction = 0
    end

  end
  return results
end


