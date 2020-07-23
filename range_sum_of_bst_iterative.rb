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
  queue = [] 
  queue << root
  while !queue.empty?
    current_node = queue.shift
    sum += current_node.val if current_node.val.between?(l,r)
    queue << current_node.left if current_node.left
    queue << current_node.right if current_node.right 
  end
  return sum    
end
