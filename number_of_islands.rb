# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  return 0 if grid == nil || grid.length == 0
  number_of_islands = 0
  0.upto(grid.length - 1) do |row|
    0.upto(grid[row].length - 1) do |column|
      if grid[row][column] == '1'
        number_of_islands += depth_first_search(grid,row,column)
      end
    end
  end
  return number_of_islands    
end

def depth_first_search(grid,row,column)
  if(row >= grid.length || row < 0 || column >= grid[row].length || column < 0 || grid[row][column] == '0')
    return 0
  end
  grid[row][column] = '0' #sink the island
  depth_first_search(grid,row - 1,column)   #up
  depth_first_search(grid,row + 1,column)   #down
  depth_first_search(grid,row,column + 1)   #right
  depth_first_search(grid,row,column - 1)   #left
  return 1
end



