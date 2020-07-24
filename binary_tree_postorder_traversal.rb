vG# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
  result = []
  return result if root == nil
  stack = []
  stack << root
  while(!stack.empty?)
    current_node = stack.pop
    result.insert(0,current_node.val)  # or call reverse at the end
    if(current_node.left != nil)
      stack << current_node.left
    end
    if(current_node.right != nil)
      stack << current_node.right
    end
  end
  return result
end

