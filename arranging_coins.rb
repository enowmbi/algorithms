# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  balance_coins = n
  k = 1    
  until(balance_coins < k)
    balance_coins -= k
    k += 1
  end
  return k - 1
end

