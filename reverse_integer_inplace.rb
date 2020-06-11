def reverse_integer(num)
  if num.between?(-2**31, ((2**31) - 1))
    negative_factor = 1
    if num < 0
      negative_factor = -1
      num = num.abs
    end
    reversed_num = 0
    while(num > 0)
      last = num % 10
      num = num / 10
      reversed_num = (reversed_num * 10) + last
    end
    return reversed_num * negative_factor 
  else
    return 0
  end
end
