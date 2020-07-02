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
def level_order_bottom(root)
	result = []
	return result if root.nil?

	queue = []
	queue << root

	until queue.empty?
		level_size = queue.length
		level = []
		level_size.times do
			node = queue.shift
			level << node.val
			queue << node.left unless node.left.nil?
			queue << node.right unless node.right.nil?
		end
		result << level
	end
	return result.reverse!
end
