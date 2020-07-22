# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  perimeter = 0
  return perimeter if grid.length == 0 || grid[0].length == 0 || grid == nil

  0.upto(grid.length - 1) do |row|
    0.upto(grid[row].length - 1) do |column|
      if grid[row][column] == 1
        perimeter += 4
        if row > 0 && grid[row - 1][column] == 1
          perimeter -= 2
        end
        if column > 0 && grid[row][column - 1] == 1
          perimeter -= 2
        end
      end
    end
  end
  return perimeter
end
