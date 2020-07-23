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
def sum_of_left_leaves(root)
  sum = 0 
  return sum if root == nil
  queue = [] << root
  while(!queue.empty?)
    current_node = queue.shift        
    queue << current_node.left if current_node.left
    queue << current_node.right if current_node.right
    if current_node.left && !current_node.left.left && !current_node.left.right
      sum += current_node.left.val 
    end
  end
  return sum    
end
