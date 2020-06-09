class Node 
  attr_accessor :value,:children

  def initialize(val, children = [])
    @value = val
    @children = children
  end
end

class NaryTree
  attr_reader :root
  def initialize(node)
    @root = node
  end

  def preorder_traversal(head = @root)
    if(head == nil)
      return head
    else
      print "#{head.value} -> "
      head.children.each do |child|
        preorder_traversal(child)
      end
      return nil
    end
  end

end
