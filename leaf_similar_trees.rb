# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  return true if root1 == nil && root2 == nil
  return false if root1 == nil || root2 == nil
  return dfs_leaf_nodes(root1) == dfs_leaf_nodes(root2)
end

def dfs_leaf_nodes(root)
  result = []
  return result if root == nil
  stack = [] << root
  until(stack.empty?) 
    current_node = stack.pop
    if current_node.left == nil && current_node.right == nil
      result << current_node.val 
    else
      stack << current_node.right if current_node.right
      stack << current_node.left if current_node.left
    end
  end
  return result
end
