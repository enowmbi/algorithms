#class Node 
#attr_accessor :val,:children
#def initialize(value,children: [])
#  @value = value
#  @children = children
#  end
#end

def postorder_traversal(root)
  return [] if root == nil
  stack []
  results =[]

  stack << root.value
  while(!stack.empty?)
    last_element = stack.pop
    results.unshift(last_element.value)
    last_element.children.each do |child|
      stack << child
    end
  end

  return results
end
