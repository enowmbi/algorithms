# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
    return false if num == 0
    return true if num == 1
    if num % 4 == 0
    is_power_of_four(num/4)
    else
        return false
    end
    
end   

