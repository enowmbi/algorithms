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
def zigzag_level_order(root)
  result = []
  return result if root == nil
  queue = [] << root
  until queue.empty?
    level_size = queue.length
    level = []

    level_size.times do 
      node = queue.shift
      level << node.val
      queue << node.right unless node.right.nil?
      queue << node.left unless node.left.nil?        
    end
    result.size.odd? ? result << level : result << level.reverse
  end
  return result
end
