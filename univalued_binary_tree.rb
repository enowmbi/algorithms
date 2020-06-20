def is_univalued_tree?(root)
  left_univalued = root.left == nil || root.left.val == root.val && is_univalued_tree?(root.left)
  right_univalued = root.right == nil || root.right.val == root.val && is_univalued_tree?(root.right)

  #return left_univalued == right_univalued ? true : false
  return left_univalued && right_univalued
end

# you can also use some form of preorder traversal and compare the values 
# or use and array to store traversal values and then 


