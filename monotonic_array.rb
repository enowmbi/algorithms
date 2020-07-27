# @param {Integer[]} a
# @return {Boolean}
def is_monotonic(a) 
    increasing = decreasing = true
    0.upto(a.length - 2) do |i|
        if a[i] > a[i + 1]
            increasing = false
        elsif a[i] < a[i + 1]
            decreasing = false
        end
    end
    return increasing || decreasing
end

