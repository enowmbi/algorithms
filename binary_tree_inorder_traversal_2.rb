def inorder_traversal(root)
  #left,node,right   => we'll use the iterative technique
  return [] if root == nil
  stack_of_nodes = []
  results =[]

  current = root
  while(current != nil || !stack_of_nodes.empty?)

    while(current != nil)
      stack_of_nodes << current
      current = current.left
    end

    last_node = stack_of_nodes.pop
    results << last_node.val
    current = current.right
  end

return results

end
