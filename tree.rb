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
      temp = temp.
     "this is bfs"
  end

  def depth_first_search_preorder
     "this is dfs-preorder"
  end
end



