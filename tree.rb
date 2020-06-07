class Node
  attr_accessor :left, :right,:value
  def initialize(value,left =nil,right = nil)
    @value = value
    @left = left
    @right = right
  end
end

class Tree 
  attr_reader :root
  def initialize(node)
    @root = node
  end

  def breadth_first_traversal
   temp = @root
   queue = []
    while (temp != nil)
      queue << temp
      left = temp.left if temp.left != nil
      right = temp.right  if temp.right != nil
      queue << left
      queue << right
      queue.shift
      temp = queue.first
    end
  end

  def depth_first_traversal_preorder
    "is is dfs-preorder"
  end

  def depth_first_traversal_inorder
    "is is dfs-inorder"
  end

  def depth_first_traversal_postorder
    "is is dfs-postorder"
  end

  def is_binary_search_tree

  end

  def delete_note

  end

  def height_of_tree

  end

  def height_of_node(node)

  end


end


