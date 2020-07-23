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
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
    return nil if root == nil
    queue = [] << root
    until(queue.empty?)
        current_node = queue.shift
        return current_node if current_node.val == val
        queue << current_node.left if current_node.left
        queue << current_node.right if current_node.right
    end
    return nil    
end
