# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
  result = []
  return result if root == nil
  stack = []
  result << root.val
  stack << root
  current_node = root
  while(!stack.empty?)
    if current_node.left != nil
      result << current_node.left.val
      current_node = current_node.left
      stack << current_node
    else       
      last_node = stack.pop
      if last_node.right != nil
        current_node = last_node.right
        result << current_node.val
        stack << current_node
      end   
    end      
  end
  return result
end
