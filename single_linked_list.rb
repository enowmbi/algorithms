class Node 
  attr_accessor :value, :next_node

  def initialize(value,next_node=nil)
    @value = value
    @next_node = next_node 
  end
end

class SingleLinkedList
  attr_reader :length, :head, :tail

  def initialize(node=nil)
    @length = 0
    if node
      @head = node
      @length +=1
      @tail = node
    end
  end

  def traverse
    temp = @head
    queue =[]
    while(temp != nil)
      queue << temp
      temp = temp.next_node
    end
    return queue
  end

  def traverse_in_reverse_order
    temp = @head
    stack =[]
    while(temp != nil)
      stack << temp
      temp = temp.next_node
    end
    temp = stack.pop
    @head = temp
    print_queue = []
    while(!stack.empty?)
      print_queue << temp
      temp.next_node = stack.pop
      temp = temp.next_node
    end
    return print_queue
  end

  def insert_at_head(node)
    temp = @head
    @head = node 
    @head.next_node = temp
    @length += 1
    @tail = temp
    return node
  end

  def insert_at_tail(node)
    if @head == nil
      insert_at_head(node)
    else
      temp = @head
      while(temp != nil)
        if temp.next_node == nil
          temp.next_node = node
          @length += 1
          @tail = node
          return node
        else
          temp = temp.next_node
        end
      end
      return node
    end
  end

  def empty?
    return @length > 0 ? false : true 
  end

  def find_node_by_value(value)
    print_queue = []
    temp = @head
    position = 0
    while(temp != nil)
      if temp.value == value
        print_queue << [temp.value,position ]
        temp = temp.next_node
        position += 1
      end
    end
    return print_queue
  end

  def insert_at_position(position)

  end

  def delete_first_node
    next_node = @head.next_node
    if next_node != nil
      @head = next_node
      @length -= 1
    end
  end

  def delete_last_node
    temp = @head
    while(temp != nil)
      current = temp
      temp = temp.next_node
      if temp.next_node == nil
        current.next_node = nil  
        @length -= 1
        @tail = current
        return temp.next_node
      end
    end
  end

  def delete_at_position(position)
  end

  def print_node(node)
    " #{node.value} " if node != nil
    #puts "Node with value: #{node.value} has next value of :#{node.next_node ? node.next_node.value : nil}"
  end

  alias :first :head

  alias :last :tail

  alias :append :insert_at_tail

  alias :prepend :insert_at_head

end
