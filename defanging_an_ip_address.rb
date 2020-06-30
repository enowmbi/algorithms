# @param {String} address
# @return {String}
def defang_i_paddr(address)
  defanged_address = ""
  address.each_char do |char|
    if char == '.'
      char = '[.]'
    end
    defanged_address += char
  end

  return defanged_address          

end
