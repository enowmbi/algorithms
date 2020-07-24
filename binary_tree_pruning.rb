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
# @return {TreeNode}
def prune_tree(root)
  return nil unless root
  root.left=prune_tree(root.left)
  root.right=prune_tree(root.right)
  return nil if root.val==0 && root.left==nil && root.right==nil
  return root    
end
