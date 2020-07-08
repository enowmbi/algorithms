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
# @return {Boolean}
def is_unival_tree(root)    
  return true if root == nil
  stack = []
  stack << root
  unival = root.val
  while(!stack.empty?)
    current_node = stack.pop
    return false if current_node.val != unival
    stack << current_node.left if current_node.left
    stack << current_node.right if current_node.right
  end
  return true
end


