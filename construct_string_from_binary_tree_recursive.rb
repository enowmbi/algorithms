# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} t
# @return {String}
def tree2str(t)
  result = ""
  return result if t == nil
  result += t.val.to_s
  result += "(#{tree2str(t.left)})" if t.left || t.right
  result += "(#{tree2str(t.right)})" if t.right
  return result
end
