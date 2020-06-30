# @param {String} s
# @return {Integer}
def max_score(s)
  left = ""
  current_score = 0
  max_score = 0

  until(s.length == 1)
    left += s.slice!(0)        
    left_score = left.chars.select{|char| char == "0"}.count
    right_score = s.chars.select{|char| char == "1"}.count
    current_score = left_score + right_score

    max_score = current_score > max_score ? current_score : max_score

  end

  return max_score
end
