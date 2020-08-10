# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
  #edge case
  return 0 if grid[0].empty?

  #stack represents to store the coordinates of rotten oranges at any time
  stack = []

  #fresh_oranges because if our total orange count is not zero by the end
  fresh_oranges = [0]

  #initial scan for rotten oranges
  grid.each_with_index do |row, idx1| 
    row.each_with_index do |col, idx2|
      stack.push([idx1, idx2]) if col == 2
      fresh_oranges[0] += 1 if col == 1
    end
  end

  return 0 if stack.empty? && fresh_oranges[0] == 0

  #Breath first search 
  ans = -1

  while !stack.empty?
    tmp = []
    while !stack.empty?
      r, c = stack.pop    

      row_helper(r+1, c, grid, tmp, fresh_oranges)
      row_helper(r-1, c, grid, tmp, fresh_oranges)
      col_helper(r, c+1, grid, tmp, fresh_oranges)
      col_helper(r, c-1, grid, tmp, fresh_oranges)

    end

    ans += 1
    stack = tmp
  end

  return ans if fresh_oranges[0] == 0
  -1
end

#A little note on ruby, aside from FixNum Objs, however things like arrays are passed object reference

def row_helper(r, c,  grid, tmp_stack, orange_count)
  if r >=0 && r < grid.length
    if grid[r][c] == 1
      tmp_stack.push([r,c])
      grid[r][c] = 2
      orange_count[0] -= 1
    end
  end
end


def col_helper(r, c, grid, tmp_stack, orange_count)
  if c >= 0 && c < grid[0].length
    if grid[r][c] == 1
      tmp_stack.push([r,c])
      grid[r][c] = 2
      orange_count[0] -= 1
    end
  end
end
