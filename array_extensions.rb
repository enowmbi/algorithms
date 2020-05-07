class Array
  # time complexity => O(n) ,space complexity => O(1), note => use for unsorted array. for sorted arrays, use last item for max and first item for min with O(1) return time - not considering the time for sorting because the array is already sorted.
  def max_value
    max_val = 0
    self.each do |item|
      if max_val < item
        max_val = item
      end
    end
    return max_val
  end

  def min_value
    min_val = 1000000
    self.each do |item|
      if min_val > item
        min_val = item
      end
    end
    return min_val
  end

end
