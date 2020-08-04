#many ways to solf this -- we could use stack or just navigate the linked list or use a hash storing the value against reversed key 
#if the function will be called many times -- using hash will be better
def nth_element_from_end(head,n)
  return head unless head
  length_of_list = 0
  current_node = head
  while(current_node != nil)
    length_of_list += 1
    current_node = current_node.next
  end

  position_of_node = length_of_list - (n+1)
  return nil if position_of_node < 0
  current_node = head
  0.upto(position_of_node) do 
    if current_node != nil
       current_node = current_node.next
    end
  end
  return current_node.val
end

class Node 
  attr_accessor :val, :next
  def initialize(value = 0, next_node = nil)
    @val = value
    @next = next_node
  end
end
