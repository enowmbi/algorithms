# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
  max_area = 0
  0.upto(grid.length - 1) do |row|
    0.upto(grid[row].length - 1) do |column|
      current_area = 0
      if grid[row][column] == 1
        current_area += depth_first_search(grid,row,column)
      end
      max_area = current_area  if current_area > max_area
    end
  end
  return max_area    
end

def depth_first_search(grid,row,column)
  return 0 if row < 0 || row >= grid.length || column < 0 || column >= grid[row].length || grid[row][column] == 0

  grid[row][column] = 0
  count = 1
  count += depth_first_search(grid,row + 1,column)
  count += depth_first_search(grid,row - 1,column)
  count += depth_first_search(grid,row,column + 1)
  count += depth_first_search(grid,row,column - 1)
  return count
end


