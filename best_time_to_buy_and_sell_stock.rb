# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  return max_profit if prices == nil || prices.length <= 1
  0.upto(prices.length - 2) do |i|
    current_profit =   get_max_profit(prices[i + 1,prices.length - 1],prices[i])
    if current_profit > max_profit 
      max_profit = current_profit
    end
  end
  return max_profit
end

def get_max_profit(arr,current_price)
  return arr.max - current_price 
end

