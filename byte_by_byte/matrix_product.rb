def product(matrix)
  row_length = matrix.length
  column_length = matrix[0].length
  max_product = -2**31
  row_start = 0
  column_start = 0
  row_end = row_length - 1
  column_end = column_length - 1
  while(row_start <= row_end && column_start <= column_end)
    current_product = 1
    row_start.upto(row_end) do |row|
      current_product *= matrix[row][column_start]
    end
    start_row = row_end
    column_start = column_start + 1
    column_start.upto(column_end) do |column|
      current_product *= matrix[start_row][column]
    end
    start_row = 0
    #compare current_product with max_product 
    max_product = current_product if max_product < current_product
  end
  return max_product
end

