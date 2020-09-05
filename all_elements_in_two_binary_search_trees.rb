# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def get_all_elements(root1, root2,result = [])
	get_elements_of_tree(root1,result)
	get_elements_of_tree(root2,result)
	result.sort!
end

def get_elements_of_tree(root,result)
	return if root == nil
	result << root.val
	get_elements_of_tree(root.left,result)
	get_elements_of_tree(root.right,result)    
end
