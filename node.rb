class Node 
  attr_accessor :val, :next
  def initialize(value,next_node = nil)
    @val = value
    @next = next_node
  end
end


