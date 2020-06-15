# @param {Integer} num
# @return {Integer}
def add_digits(num)
    if num < 10
        return num
    end
    while(num >=10)
       num = (num % 10) + (num / 10) 
    end
    
    return num     
    
end
