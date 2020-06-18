class Node 
  attr_accessor :val,:next
  def initialize(value)
    @val = value
  end
end

class LinkedList
  attr_accessor :length,:head
  def initialize(node,next_node = nil)
    @head = node
    @length = 0
    @head.next = next_node
    if node != nil
      @length += 1
    end
  end

  # def add_node(value = nil)
  # node = Node.new(value)
  # if length > 0 #adding at the tail
  # current = @head
  # while(current != nil)
  # current = current.next
  # end
  # current.next = node
  # else #it is the head
  # @head = node
  # end

  # length += 1

  # return @head

  # end

  def to_s(node = @head)
    if node == nil 
      return nil
    end
    current = node
    while(current != nil)
      print "#{current.val} ->"
      current = current.next
    end
  end

end




def is_palindrome?(node = @head)
  #given 1->2->2->1->nil
  if node == nil
    return false
  end

  fast_pointer = node  #at 1
  slow_pointer = node  #at 1

  while(fast_pointer != nil && fast_pointer.next != nil)
    fast_pointer.next = fast_pointer.next.next
    slow_pointer.next = slow_pointer.next
  end

  slow_pointer = reverse!(slow_pointer)
  fast_pointer = node

  while(slow_pointer != nil)
    if slow_pointer.val != fast_pointer.val
      return false
    else
      slow_pointer = slow_pointer.next
      fast_pointer = fast_pointer.next
    end
  end

  return true

end

def reverse!(node)
  current = node
  next_node = previous_node = nil
  while(current != nil)
    next_node = current.next
    current.next = previous_node
    previous_node = current
    current = next_node
  end

  @head = previous_node
  return @head

end

