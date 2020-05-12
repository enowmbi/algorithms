def kadanes_algorithm(array)
  max_current = max_overall = array.first
  temp_holding =[]
  for i in 1..(array.length - 1) do 
    temp_holding << array[i]
    temp_holding << array[i] + max_current
    max_current = temp_holding.max
  end
  if max_current > max_overall 
    max_overall = max_current
  end

  return max_overall
end





