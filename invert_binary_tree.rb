def invert_binary_tree(head)
  current = head
  if current == nil
    return current
  else
    temp = current.left
    current.left = current.right
    current.left = temp
    invert_binary_tree(current.left)
    invert_binary_tree(current.right)
  end
  return current 
end
