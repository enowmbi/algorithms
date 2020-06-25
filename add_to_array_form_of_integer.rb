# @param {Integer[]} a
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(a, k)   
    return a if k == 0
    sum = (a.join.to_i) + k
    result = []
    sum.to_s.each_char do |char|
         result << char.to_i
     end
    
    return result
end
