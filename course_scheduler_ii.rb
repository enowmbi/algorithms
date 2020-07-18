# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Integer[]}
def find_order(num_courses, prerequisites)    
  @result = []
  courses = 0.upto(num_courses - 1).to_a
  find_order_sub(courses, prerequisites)
  return num_courses == @result.size ? @result:[] 
end

def find_order_sub(courses, prerequisites)

  courses_with_prerequisites = prerequisites.map{|x| x.first}.uniq

  degree_0 = courses - courses_with_prerequisites

  return if degree_0.empty?

  @result += degree_0

  prerequisites = prerequisites.select{|x| !degree_0.include? x.last}
  courses = courses_with_prerequisites

  return find_order_sub(courses, prerequisites)

end
