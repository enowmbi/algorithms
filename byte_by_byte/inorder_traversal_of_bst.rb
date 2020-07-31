def inorder_traversal(root)
  print nil unless root
  stack = []
  current_node = root
  while(current_node != nil || !stack.empty?)
    if current_node != nil
      stack << current_node
      current_node = current_node.left
    end
    current_node = stack.pop
    puts "#{current_node.val}"
    current_node = current_node.right
  end
end
