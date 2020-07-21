# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  board.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      return true if depth_first_search(board, i, j, word)
    end
  end
  false
end

def depth_first_search(board,row,column,word)
  return true if word.length == 0

  if row < 0 || row >= board.length || column < 0 || column >= board[0].length || board[row][column] != word[0]
    return false
  end

  temp = board[row][column]
  board[row][column] = ''

  result = depth_first_search(board, row + 1, column, word[1..-1]) ||
    depth_first_search(board, row - 1, column, word[1..-1]) ||
    depth_first_search(board, row, column + 1, word[1..-1]) ||
    depth_first_search(board, row, column - 1, word[1..-1])

  board[row][column] = temp

  return result
end

