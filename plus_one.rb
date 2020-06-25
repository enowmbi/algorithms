# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  number = digits.join().to_i
  number = number + 1
  results = []
  number.to_s.each_char do |char|
    results << char.to_i
  end
  return results    
end
