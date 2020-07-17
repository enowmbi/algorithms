# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  return 1 if n == 0
  if n.abs % 2 == 0 
    if n < 0
      result = 1/my_pow(x,n.abs/2)
    else
      result = my_pow(x,n/2)
    end
    return result * result
  else
    return my_pow(x,n-1) * x
  end
end
