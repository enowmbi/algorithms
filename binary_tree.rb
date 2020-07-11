class Node 
  attr_accessor :left, :right, :val
  def initialize(value = 0,left_node = nil,right_node = nil)
    @val = value
    @left = left_node
    @right = right_node
  end
end

class BinaryTree
  attr_accessor :root, :length
  def initialize(node)
    @root = node
    @length = 1
  end

  def level_order_traversal(root)
    result = []
    return result if root == nil
    queue = [] << root
    until(queue.empty?)
      current_node = queue.shift
      result << current_node.val
      queue << current_node.left if current_node.left 
      queue << current_node.right if current_node.right
    end
    return result
  end

  def preorder_traversal_recursive(root,result = [])
    return nil if root == nil
    result << root.val
    preorder_traversal_recursive(root.left,result)
    preorder_traversal_recursive(root.right,result)
    return result
  end

  def preorder_traversal_iterative(root)
    result = []
    return result if root == nil
    stack = [] << root
    until(stack.empty?)
      current_node = stack.pop
      result << current_node.val
      stack << current_node.right if current_node.right
      stack << current_node.left if current_node.left
    end
    return result
  end

  def inorder_traversal_recursive(root,result =[])
    return nil if root == nil
    inorder_traversal_recursive(root.left,result)
    result << root.val
    inorder_traversal_recursive(root.right,result)
    return result
  end

  def inorder_traversal_iterative(root)
    result = []
    return result if root == nil
    stack = [] 
    current_node = root
    while(!stack.empty? || current_node != nil)
      while(current_node != nil)
        stack << current_node
        current_node = current_node.left 
      end
      current_node = stack.pop
      result << current_node.val
      current_node = current_node.right
    end
    return result
  end

  def postorder_traversal_recursive(root,result = [])
    return nil if root == nil
    postorder_traversal_recursive(root.left,result)
    postorder_traversal_recursive(root.right,result)
    result << root.val
    return result
  end

  def postorder_traversal_iterative(root)
    result = []
    return result if root == nil
    stack1 = [] << root
    stack2 = []
    while(!stack1.empty?)
      current_node = stack1.pop
      stack2 << current_node.val
      stack1 << current_node.left if current_node.left
      stack1 << current_node.right if current_node.right 
    end
    while(!stack2.empty?)
      result <<= stack2.pop
    end
    return result
  end

  def insert(value)
    current_node = @root
    puts "#{@root}  -- this is the root"
    while(current_node != nil)
      if(value > current_node.val && current_node.right == nil)
        current_node.right = Node.new(value)
      elsif(value < current_node.val && current_node.left == nil)
        current_node.left = Node.new(value)
      elsif(value > current_node.val)
        current_node = current_node.right
      elsif(value < current_node.val)
        current_node = current_node.left
      else
        return
      end
    end
    return @root
  end

  def size_of_tree(root)
    return 0 if root == nil
    left_size = size_of_tree(root.left)
    right_size = size_of_tree(root.right)
    return (left_size + right_size) + 1
  end

  alias :print_nodes :to_s
  alias :length :size_of_tree 
  alias :size :size_of_tree
  alias :node_count :size_of_tree
end

