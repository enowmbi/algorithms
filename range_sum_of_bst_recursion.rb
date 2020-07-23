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
# @param {Integer} l
# @param {Integer} r
# @return {Integer}
def range_sum_bst(root, l, r)
  sum = 0
  return sum if root == nil
  sum += root.val if root.val.between?(l,r)
  sum +=range_sum_bst(root.left,l,r)
  sum += range_sum_bst(root.right,l,r)
  return sum   
end
