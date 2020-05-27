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

  def breadth_first_search
    while (temp != nil)
      temp = temp.left
      temp2 = temp2.right
      "this is bfs"
    end
  end

  def depth_first_search_preorder
    "is is dfs-preorder"
  end

  def depth_first_search_inorder
    "is is dfs-inorder"
  end

  def depth_first_search_postorder
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



