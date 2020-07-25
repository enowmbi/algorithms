# @param {Integer[]} a
# @return {Integer}
def repeated_n_times(a)
  a.each do |element|
    return element if a.index(element) != a.rindex(element)
  end
end
