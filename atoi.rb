#return {integer}
def my_atoi(str)
  val = str.to_i
  if val > 2**32
    puts "greater than #{2**32}"
  elsif val < -2**31
    puts "less than -#{2**31}"
  elsif val < 2**32 - 1 && val > -2**31
    puts "value inbetween #{-2**31} and #{2**32 - 1}"
  end 
end
