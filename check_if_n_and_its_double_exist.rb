# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  arr.each do |element|
    if !element.zero?
      if arr.index(element / 2.0) || arr.index(element * 2)
        return true
      end
    else
      return arr.select{|x| x.zero?}.count > 1 ? true : false
    end
  end
  return false
end
