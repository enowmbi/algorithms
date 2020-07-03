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
# @return {Integer}
def min_depth(root)
  return 0 if root == nil
  return 1 if root.left == nil && root.right == nil
  return min_depth(root.left) + 1 if root.right == nil
  return min_depth(root.right) + 1 if root.left == nil
  return [min_depth(root.left),min_depth(root.right)].min + 1
end
