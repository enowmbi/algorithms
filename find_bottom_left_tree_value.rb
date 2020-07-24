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
def find_bottom_left_value(root)
  queue = [root]
  until queue.empty?
    current_node = queue.shift
    queue << current_node.right if current_node.right
    queue << current_node.left if current_node.left
  end
  return current_node.val
end
