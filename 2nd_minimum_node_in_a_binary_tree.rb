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
def find_second_minimum_value(root)
  result = []
  return result unless root
  queue = [root]
  until queue.empty?
    current_node = queue.shift
    result << current_node.val if !result.index(current_node.val)
    queue << current_node.left if current_node.left
    queue << current_node.right if current_node.right
  end
  return result.size >= 2 ? result.sort[1] : -1    
end
