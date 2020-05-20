# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  if haystack.include? needle
    return haystack.index needle 
  else
    return -1
  end
end
