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
def width_of_binary_tree(root)
  max_width = 0
  node_queue = [{node: root, position: 0}]
  while node_queue.size > 0 do
    next_queue = []
    length = node_queue.size
    min_position = +1.0/0.0
    max_position = 0
    while node_queue.size > 0 do
      current_node = node_queue.shift
      if current_node[:node].left
        next_queue << {node: current_node[:node].left, position: 2 * current_node[:position]+1} 
      end 
      if current_node[:node].right
        next_queue << {node: current_node[:node].right, position: 2 * current_node[:position]+2} 
      end
      min_position = [min_position, current_node[:position]].min
      max_position = [max_position, current_node[:position]].max
    end
    node_queue = next_queue
    level_length = length == 1 ? 1 : max_position - min_position + 1
    max_width = [max_width, level_length].max
  end
  max_width
end
