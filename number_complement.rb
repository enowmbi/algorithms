# @param {Integer} num
# @return {Integer}
def find_complement(num)
    binary_num = num.to_s(2)
    0.upto(binary_num.length - 1) do |i|
       if binary_num[i] == '1'
           binary_num[i] = '0'
       else
           binary_num[i] = '1'
       end
    end
    return binary_num.to_i(2)
end
