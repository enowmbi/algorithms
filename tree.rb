class Node
  attr_accessor :left, :right,:value
  def initialize(vanue,left =nil,right = nil)
    if target.between?(array[low],array[high])
      #return low if target < array[low]
      #return high + 1 if target > array[high]
      @value = value
      @left = left
      @right = right
    end

  end

  def initialize(node = nil)
    @root = node
  end

  def add_node(value)


  end

  def breadth_first_traversal(head = @root)
    return head  if head == nil
    queue = []
    queue << head
    while(!queue.empty?)
      current = queue.shift
      print "#{current.value} -> " 
      queue << current.left if current.left != nil
      queue << current.right if current.right != nil 
    end
  end

  def preorder_traversal(head= @root)
    if head == nil
      return head
    else
      print "#{head.value} -> "
      preorder_traversal(head.left)
      preorder_traversal(head.right)
    end
  end

  def inorder_traversal(head = @root)
    if head == nil
      return head
    else
      inorder_traversal(head.left)
      print "#{head.value} -> "
      inorder_traversal(head.right)
    end
  end

  def postorder_traversal(head = @root)
    if head == nil
      return head
    else
      postorder_traversal(head.left)
      postorder_traversal(head.right)
      print "#{head.value} -> "
    end
  end

  def inverse_binary_tree(head = @root)
    if head == nil
      return head
    else
      temp = head.left
      head.left = head.right
      head.right = temp
      inverse_binary_tree(head.left)
      inverse_binary_tree(head.right)
    end
    return head
  end

  def invert_tree!(root)
    return root if root == nil
    left = invert_tree!(root.left)
    right = invert_tree!(root.right)
    #swap
    root.left= right
    root.right = left
    return root
  end

  def max_depth(root)
    return 0 if root == nil
    left = max_depth(root.left)
    right = max_depth(root.right)
    return (left + right) + 1
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



