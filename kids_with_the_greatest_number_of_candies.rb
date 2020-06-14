# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  greatest_candies = []
  max = candies.max
  candies.each do |candy|
    if (candy + extra_candies) >= max
      greatest_candies << true
    else
      greatest_candies << false
    end
  end

  return greatest_candies

end
