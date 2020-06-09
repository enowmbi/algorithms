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

end
