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

  def search(value)
    current = @head
    results = {} #return node and position of node
    index = 0

    while(current != nil && index <= @length)
      if current.value == value
        results["#{index}"] = current.value 
        break
      else
        current = current.next_node
      end
      index +=1
    end
    return  results
  end

 def mid_point
   middle_point ={}
   mid = (@length - 1) / 2
   current = @head
   index = 0
   while(current != nil)
     if (index == mid)
       middle_point[index] = current.value  
       break
     end
     current = current.next_node
     index += 1
   end
   return middle_point
 end

 #TODO get_midpoint,merge_point(other_linked_list),add_another(another_list),insert_at position,remove_at,delete_at, add tail and keep track

  alias :size :length
  alias :count :length
  alias :to_s :print_forward
  alias :print_backward :reverse_print
  alias :flip! :reverse!
  alias :find :search
  alias :centre :mid_point
  alias :middle :mid_point
end
