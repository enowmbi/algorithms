def fizz_buzz(num)
  results = []
  1.upto(num) do |i|
    if(i % 3 == 0 && i % 5 == 0)
      results << "FizzBuzz"
    elsif(i % 5 == 0)
      results << "Buzz"
    elsif(i % 3 == 0)
      results << "Fizz"
    else
      results << i.to_s
    end
  end
  return results
end

#rules:
#multiples of 3 = 'fizz', multiples of 5 = 'buzz', multiples of 3 and 5 = 'fizzbuzz'
#
