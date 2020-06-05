class Node 
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
  end
end

class LinkedList
  attr_reader :head, :length

  def initialize(node)
    @head = node
    @length = 1
  end

  def add_node(node)
    current = @head
    if current == nil
      @head = node
    else
      until(current.next_node == nil)
        current = current.next_node
      end
      current.next_node = node
      @length += 1
      return @head
    end
  end

  def to_s
    current = @head
    while(current != nil)
      print "#{current.value} -> "
      current = current.next_node
    end
  end

  #TODO reverse_print, insert_at position,remove_at,delete_at,reverse_list, add tail and keep track

  alias :size :length
  alias :count :length

end
