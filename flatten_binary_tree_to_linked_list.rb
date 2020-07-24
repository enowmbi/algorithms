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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root,result = [])
  return nil unless root
  stack = [root]
  previous_node = nil
  until(stack.empty?)
    current_node = stack.pop
    if previous_node 
      previous_node.right = current_node 
      previous_node.left = nil
    end
    stack << current_node.right if current_node.right
    stack << current_node.left if current_node.left
    previous_node = current_node
  end
  return root
end
