# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    (a.to_i(2) + b.to_i(2)).to_s(2)    
end
#using ruby inbuilt to_i to convert the binary string to binary num add the numbers and return the sum as a string in binary representation

