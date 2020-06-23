# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    
    return false if n == 0
    
    until(n == 1)
        if n % 3 == 0 
            n = n / 3
        else
            return false
        end
    end
    return true
        
end
