# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  arr = Array.new(num_people,0)
  i,amount = 0,1
  while candies > 0
    if amount <= candies
      arr[i%num_people] += amount
      candies -= amount
      amount += 1
    else
      arr[i%num_people] += candies
      candies = 0
    end
    i += 1
  end
  arr
end
