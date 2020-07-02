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
# @return {Integer[][]}
def level_order(root)
  result = []
  return result if root == nil

  queue = []
  queue << root
  while(!queue.empty?)
    level_size = queue.length
    level = []
    level_size.times do 
      current_node = queue.shift
      level << current_node.val
      queue << current_node.left if current_node.left != nil
      queue << current_node.right if current_node.right != nil
    end
    result << level
  end
  return result
end


