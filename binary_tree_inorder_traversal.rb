def inorder_traversal(root)
  result = []
  return result if root == nil
  stack = [] 
  current_node = root
  while(stack.empty? || current_node != nil)
    while(current_node != nil)
      stack << current_node
      current_node = current_node.left
    end
    current_node = stack.pop
    result << current_node.val
    current_node = current_node.right 
  end
end

