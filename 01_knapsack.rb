# require 'pry'
def max_value(items,max_weight)
  max_val = 0
  return max_val if items.size == 0 || max_weight == 0
  knapsack_table = Array.new(items.size + 1){Array.new(max_weight + 1,0)}
  weights,values = items.keys,items.values
  binding.pry()
  0.upto(weights.size) do |row|
    puts "row-# #{row}"
    binding.pry()
    0.upto(max_weight) do |column|
      puts "column-# #{column}"
      binding.pry()
      if row == 0 || column == 0
        knapsack_table[row][column] = 0  #bag capacity of 0 or no items
        binding.pry
      elsif(column < weights[row]) #current item weight is greater than current bag capacity
        binding.pry
        knapsack_table[row][column] = knapsack_table[row - 1][column]
      else
        binding.pry
        knapsack_table[row][column] = [values[row] + knapsack_table[row - 1][column - weights[row]]].max
      end
    end
  end
  binding.pry
  return max_val
end
