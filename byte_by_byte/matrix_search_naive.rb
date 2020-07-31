#search through the matrix and return true if you find the element else false  this takes O(mn) for m x n matrix
#we'll do and optimized solution to take advantage of the sorted nature of elements in the matrix
def search(matrix,target)
  return false if matrix == nil || matrix == []
  num_rows = matrix.length
  num_columns = matrix[0].length
  0.upto(num_rows - 1) do |row|
    0.upto(num_columns - 1) do |column|
      if matrix[row][column] == target
        return true
      end
    end
  end
  return false
end
