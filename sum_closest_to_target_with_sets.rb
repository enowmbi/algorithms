def closest_to_target(array1, array2, target)
  closest_matches = []
  set1 = Set.new(array1)

  array2.each do |ar_el|
    if set1.include?(target - ar_el) 
      closest_matches << [ar_el,target-ar_el] 
    else
      if set1.include?(target - (ar_el + 1))
        closest_matches << [ar_el,(target - ar_el + 1)] 
      end
      if set1.include?(target - (ar_el - 1))
        closest_matches << [ar_el,(target - ar_el - 1)] 
      end
    end
  end
  return closest_matches
end
#solution2 => time complexity = 1 + 1 + n2 => n2 + 2 => O(n2) => quadratic , space => O(n)
