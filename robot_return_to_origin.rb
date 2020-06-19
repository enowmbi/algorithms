# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  x = 0
  y = 0
  moves.each_char do |char|
    if char == 'U'
      y += 1
    elsif char == 'D'
      y -= 1            
    elsif char =='R'
      x += 1
    elsif char == 'L'
      x -= 1
    end
  end
  return (x == 0 && y == 0)
end
