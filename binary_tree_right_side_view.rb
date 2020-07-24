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
def right_side_view(root)
  possible_views = []
  return possible_views unless root
  queue = [root]
  until queue.empty?
    level_size = queue.size
    level = []
    level_size.times do 
      current_node = queue.shift
      level << current_node.val
      queue << current_node.left if current_node.left
      queue << current_node.right if current_node.right
    end
    possible_views << level.last
  end
  return possible_views.flatten
end
