# @param {Integer[]} cells
# @param {Integer} n
# @return {Integer[]}
def prison_after_n_days(cells, n)
  result = Array.new(8, 0)
  n %= 14
  n = 14 if n == 0
  n.times do |i|
    (1..6).each do |column|
      result[column] = cells[column - 1] == cells[column + 1] ? 1 : 0

    end
    cells = result.clone
  end

  result
end
