def binary_search(root,target)
  if root == nil
    return nil
  end
  if root.val == target
    return root
  elsif root.val > target
    return binary_search(root.left,target)
  else
    return binary_search(root.right,target)
  end

end
