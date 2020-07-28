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
# @return {Integer[]}
def largest_values(root)
  result = []
  return result unless root
  queue = [root]
  until queue.empty?
    level = []
    level_size = queue.size
    level_size.times do
      current_node = queue.shift
      level << current_node.val
      queue << current_node.left if current_node.left
      queue << current_node.right if current_node.right
    end
    result << level.max
  end
  return result
end
