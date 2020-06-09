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
  def initialize(node = nil)
    @root = node
  end

  def add_node(value)
    #

  end

  def breadth_first_traversal(head)
    temp = head
    queue = []
    while (temp != nil)
      queue << temp
      while(!queue.empty?)
        elem = queue.shift
        print "#{elem.value} -> "
        queue << elem.left
        queue << elem.right
      end
    end
  end

  def preorder_traversal(head)
    if head == nil
      return head
    else
      print "#{head.value} -> "
      preorder_traversal(head.left)
      preorder_traversal(head.right)
    end
  end

  def inorder_traversal(head)
    if head == nil
      return head
    else
      inorder_traversal(head.left)
      print "#{head.value} -> "
      inorder_traversal(head.right)
    end
  end

  def postorder_traversal(head)
    if head == nil
      return head
    else
      postorder_traversal(head.left)
      postorder_traversal(head.right)
      print "#{head.value} -> "
    end
  end

  def is_binary_search_tree

  end

  def delete_note

  end

  def height_of_tree

  end

  def height_of_node(node)

  end

  #aliases
  alias :level_order_traversal :breadth_first_traversal

end



