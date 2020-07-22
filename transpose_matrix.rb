# @param {Integer[][]} a
# @return {Integer[][]}
def transpose(a)
  result = Array.new(a[0].length){Array.new(a.length)}
  0.upto(a.length - 1) do |row|
    0.upto(a[0].length - 1) do |column|
      result[column][row] = a[row][column]
    end
  end
  return result
end
