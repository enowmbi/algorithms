# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    return false if n == 0
    return true if n == 1
    if n % 2 == 0
    is_power_of_two(n/2)
    else
        return false
    end
    
end
