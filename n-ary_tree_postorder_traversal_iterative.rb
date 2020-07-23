# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def postorder(root)
  result = [] 
  return result if root == nil
  stack1 = [] << root 
  stack2 = []
  while(!stack1.empty?)
    current_node = stack1.pop
    stack2 << current_node.val
    current_node.children.each do |child|
      stack1 << child
    end      
  end
  while(!stack2.empty?)
    result <<= stack2.pop
  end
  return result  
end    
