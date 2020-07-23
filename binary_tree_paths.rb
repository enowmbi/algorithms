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
# @return {String[]}
def binary_tree_paths(root)
  @stack = []
  @result = []
  preorder_traversal(root)
  @result
end

def preorder_traversal(current_node)
  return unless current_node
  @stack << current_node.val
  preorder_traversal(current_node.left)
  preorder_traversal(current_node.right)
  @result << @stack.join("->") if !current_node.left && !current_node.right
  @stack.pop
end
