def first_duplicate(arr)
  arr.each do |element|
    return element if arr.index(element) != arr.rindex(element)
  end
end

