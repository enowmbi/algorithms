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
def postorder(root,result =[])
  return result if root == nil 
  root.children.each do |child|
    postorder(child,result)
  end
  result << root.val
  return result  
end    
