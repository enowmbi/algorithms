def is_complete_tree?(root)
  #do a level-order traversal if null appears before end of tree then return false, else return true
  return true if root == nil
  reached_end = false

  queue = []
  queue << root
  while(!queue.empty?)
    current = queue.shift
    if current == nil
      reached_end = true
    else
      return false if reached_end
      queue << current.left 
      queue << current.right
    end
  end
  return true 
end
