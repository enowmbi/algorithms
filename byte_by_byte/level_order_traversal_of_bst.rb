def level_order_traversal(root)
  result = []
  return result unless root
  queue = [root]
  unless queue.empty?
    current_node = queue.shift
    result << current_node.val
    queue << current_node.left if current_node.left
    queue << current_node.right if current_node.right
  end
  return result
end
