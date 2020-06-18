def merge_trees(tree_node_1,tree_node_2)
  #set base conditions
  return tree_node_2 if tree_node_1 == nil
  return tree_node_1 if tree_node_2 == nil

  tree_node_1.val += tree_node_2.val
  tree_node_1.left = merge_trees(tree_node_1.left,tree_node_2.left)
  tree_node_1.right = merge_trees(tree_node_1.right,tree_node_2.right)
  return tree_node_1
end
