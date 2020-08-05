# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  return nil unless root
  current_node = root
  while(current_node != nil)
    if(current_node.val > p.val && current_node.val > q.val)
      current_node = current_node.left
    elsif(current_node.val < p.val && current_node.val < q.val)
      current_node = current_node.right
    else
      return current_node
    end
  end    
end
