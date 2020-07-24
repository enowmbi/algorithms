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
  result = []
  return result unless root
  current_path = root.val.to_s
  if(root.left == nil && root.right == nil)
    result << current_path
  end
  depth_first_traversal(root.left,current_path,result) if root.left
  depth_first_traversal(root.right,current_path,result) if root.right
  return result
end

def depth_first_traversal(node,current_path,result)
  current_path += '->' + node.val.to_s
  if(node.left == nil && node.right == nil)
    result << current_path 
    return
  end
  depth_first_traversal(node.left,current_path,result) if node.left
  depth_first_traversal(node.right,current_path,result) if node.right
end


