# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  return nil if inorder.empty?
  root_node = TreeNode.new(preorder.first)
  root_index = inorder.index(preorder.first)
  root_node.left = build_tree(preorder[1..root_index], inorder[0...root_index])
  root_node.right = build_tree(preorder[root_index+1..-1], inorder[root_index+1..-1])
  return root_node
end
