# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  @prices = prices
  @memo = {}    
  decide(0, 'buy')
end

def decide(index, move)
  return 0 if index >= @prices.size
  return @memo[index][move] if @memo[index] && @memo[index][move]

  values = []
  values << 
  case move
  when 'buy'
    -@prices[index] + decide(index+1, 'sell')
  when 'sell'
    @prices[index] + decide(index+1, 'cooldown')
  when 'cooldown'
    decide(index+1, 'buy')
  end

  values << decide(index+1, move) if move != 'cooldown'

  @memo[index] ||= {}
  @memo[index][move] = values.max
end
