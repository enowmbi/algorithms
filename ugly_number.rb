# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num <= 0
  return true if num == 1
  prime_factors = [2,3,5]
  prime_factors.each do |factor|
    while(num % factor == 0)
      num = num / factor            
    end
  end
  return num == 1  
end


