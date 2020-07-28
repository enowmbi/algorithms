# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} inorder
# @param {Integer[]} postorder
# @return {TreeNode}
def build_tree(inorder, postorder)
    return nil if inorder.none?    
    root_node = TreeNode.new(postorder.last)
    root_index = inorder.index(postorder.last)
    root_node.left = build_tree(inorder[0...root_index], postorder[0...root_index])
    root_node.right = build_tree(inorder[root_index + 1..-1], postorder[root_index...-1]) 
    return root_node
end
