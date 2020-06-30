# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  count = 0
  row_count = grid.length 
  column_count = grid[0].length
  0.upto(row_count - 1) do |row|
    0.upto(column_count - 1) do |column|
      if(grid[row][column] < 0)
        count += 1
      end
    end
  end
  return count
end
