def closest_to_target(array1, array2, target)
  closest_matches = []
  array1.each do |a1_el|
    array2.each do |a2_el|
      if (a1_el + a2_el == target) 
        closest_matches << [a1_el,a2_el]
      elsif(a1_el + a2_el == target - 1) || (a1_el + a2_el == target + 1) 
        closest_matches << [a1_el,a2_el]
      end
    end
  end
  return closest_matches
end
#solution2 => time complexity = 1 + 1 + n2 => n2 + 2 => O(n2) => quadratic , space => O(n)
