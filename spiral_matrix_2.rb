require 'matrix' #matrix library in Ruby standard library
def spiral_order(n)
  row_begin = 0
  row_end = n - 1
  column_begin = 0
  column_end = n - 1
  counter = 1
  results = Matrix.build(n){|row,col| 0 } #creates a matrix n x n, with 0 as value
  direction = 0

  while(row_begin <= row_end && column_begin <= column_end)
    if(direction == 0)
      column_begin.upto(column_end) do |i|
        results[row_begin,i] = counter
        counter += 1
      end
      row_begin += 1
      direction = 1
    elsif(direction == 1)
      row_begin.upto(row_end) do |j|
        results[j,column_end] = counter
        counter += 1
      end
      column_end -= 1
      direction = 2
    elsif(direction == 2)
      column_end.downto(column_begin) do |k|
        results[row_end,k] = counter
        counter += 1
      end
      row_end -= 1
      direction =3

    elsif(direction == 3)
      row_end.downto(row_begin) do |l|
        results[l,column_begin] = counter
        counter += 1
      end
      column_begin += 1
      direction = 0
    end
  end
  return results.to_a  #results will be a matrix so call .to_a to return an array of arrays
end
