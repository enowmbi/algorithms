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

  def print_forward
    current = @head
    while(current != nil)
      print "#{current.value} -> "
      current = current.next_node
    end
  end

  def reverse_print(head = @head)
     current = head
     if(current == nil)
       return  current
     else
       reverse_print(current.next_node)
       print "#{current.value} -> "
     end
  end

def reverse!
  current = @head
  next_node = previous = nil
  while(current != nil)
    next_node = current.next_node
    current.next_node = previous
    previous = current
    current = next_node
  end
  @head = previous
end

  #TODO get_midpoint,merge_point(other_linked_list),add_another(another_list),insert_at position,remove_at,delete_at,reverse_list, add tail and keep track

  alias :size :length
  alias :count :length
  alias :to_s :print_forward
  alias :print_backward :reverse_print
  alias :flip! :reverse!
end
