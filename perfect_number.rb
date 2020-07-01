# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  positive_divisors = []
  lower_boundary = 1  # since we are talking about positive divisors
  upper_boundary = num - 1 # divisors will not include self

  lower_boundary.upto(upper_boundary) do |number|
    if(positive_divisor?(number,num))
      positive_divisors << number
    end        
  end
  positive_divisors.sum  == num  ? true : false     
end

def positive_divisor?(divisor,number)
  if(divisor == 0 || number % divisor != 0 )
    return false
  end
  return true
end

#note
#this is a naive solution -- doesn't scale -- when n is very large it doesn't make sence to check all numbers lower than it
