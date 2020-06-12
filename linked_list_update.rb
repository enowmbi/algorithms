class Node 
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
  end
end

class LinkedList
  attr_reader :head, :length

  def initialize(node = nil)
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

  def print_forward(node = @head)
    current = node
    while(current != nil)
      print "#{current.value} -> "
      current = current.next_node
    end
  end

  def reverse_print(node = @head)
    current = node
    if(current == nil)
      return  current
    else
      reverse_print(current.next_node)
      print "#{current.value} -> "
    end
  end

  def reverse!(node = @head)
    current = node
    next_node = previous = nil
    while(current != nil)
      next_node = current.next_node
      current.next_node = previous
      previous = current
      current = next_node
    end
    @head = previous
  end

  def search(node = @head,value)
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

  def mid_point(node =@head)
    middle_point ={}
    mid = (@length - 1) / 2
    current = node
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

  def middle_part(node = @head)
    if node == nil
      return node
    end

    fast_pointer = slow_pointer = node

    while(fast_pointer != nil && fast_pointer.next_node != nil)
      slow_pointer = slow_pointer.next_node
      fast_pointer = fast_pointer.next_node.next_node
    end
    return slow_pointer 
  end

  def pop(node = @head)
    current = node
    previous = nil
    while(current.next_node != nil)
      previous = current
      current = current.next_node
    end
    previous.next_node = nil
    @length -= 1
    return current.value
  end

  def shift(node = @head)
    current = node
    @head = current.next_node if current != nil
    @length -= 1
    return current.value
  end

  def palindrome?(node= @head)
    list1 = print_forward(node)
    list2 = print_backward(node)
    return list1 == list2 ? true : false
  end

  def palindrome2?(node = @head)
    #this method uses two pointers 
    fast = slow = node
    while(fast != nil && fast.next_node != nil)
      fast = fast.next_node.next_node
      slow = slow.next_node
    end
    slow = reverse!(slow)
    fast = node
    while(slow != nil)
      if slow.value != fast.value
        return false
      else
        slow = slow.next_node
        fast = fast.next_node
      end
    end
    return true
  end

  def odd_even_linked_list!(node = @head)
    if node == nil
      return node
    end

    even = node.next_node
    even_head = even
    odd = node

    while(even != nil && even.next_node != nil)
      odd.next_node = even.next_node
      odd = odd.next_node
      even.next_node = odd.next_node
      even = even.next_node
    end
    odd.next_node  = even_head

    return node
  end

  def merge(l1 = self,l2)
    temp_node = LinkedList.new(Node.new(nil))
    current_node = temp_node.head

    while l1 != nil && l2 != nil
      if l1.value < l2.value
        current_node.next_node = l1
        l1 = l1.next_node
      else
        current_node.next_node = l2
        l2 = l2.next_node
      end
      current_node = current_node.next_node
    end
     if l1 == nil
       current_node.next_node = l2
       l2 = l2.next_node
     end
     if l2 == nil
       current_node.next_node = l1
       l1 = l1.next_node
     end
     
     return temp_node
  end

  #TODO merge_point(other_linked_list),add_another(another_list),insert_at position,remove_at,delete_at, add tail and keep track

  alias :size :length
  alias :count :length
  alias :to_s :print_forward
  alias :print_backward :reverse_print
  alias :flip! :reverse!
  alias :find :search
  alias :centre :mid_point
  alias :middle :mid_point
end
