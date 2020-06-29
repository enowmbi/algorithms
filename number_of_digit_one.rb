# @param {Integer} n
# @return {Integer}
def count_digit_one(n)
  string_with_ones = ''
  count_of_ones = 0
  1.upto(n) do |i|
    if i.to_s.include?("1")
      string_with_ones += i.to_s
    end
  end
  string_with_ones.each_char do |char|
    if(char == '1')
      count_of_ones += 1
    end
  end

  return count_of_ones
end

#This is a naive solution and will not scale as numbers become increasingly large. Don't use this in leetcode submissions
