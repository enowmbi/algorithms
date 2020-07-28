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
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
  #inorder DFS will return sorted in increasing order 
  result = []
  return result unless root
  queue = [root]
  until(queue.empty?)
    current_node = queue.shift
    result << current_node.val
    queue << current_node.left if current_node.left
    queue << current_node.right if current_node.right
  end
  result.sort!
  return result[k-1]
end

#NOte:
#This solution has a time complexity of O(nlogn) -- because we do a breadth-first traversal - O(n) and then merge sort which is O(nlogn)
#but we could do better - given the nature of a bst -which will return values sorted if we do an inorder traversal hence no need to sort resulting in time complexity of O(n) and space complexity of O(n)
