# @param {String} s
# @return {Integer}
def num_steps(s)
  num = s.to_i(2)
  steps = 0
  return 0 if num <= 1
  while(num > 1)
    if num.even?
      num = num / 2
    else      
      num = num + 1
    end
    steps += 1
  end
  return steps    
end
