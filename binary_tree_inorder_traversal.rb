def inorder_traversal(root)
  #returns and array of the values 
  result = []
  if root == nil
    result << root
    return result
  else
    inorder_traversal(root.left)
    result << root.value
    inorder_traversal(root.right)
  end
  return result
end

