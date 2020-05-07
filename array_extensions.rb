class Array
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

  end

end
