#we'll use a hash to keep track of linked list

class Node 
  attr_accessor :next, :val
  def initialize(value = 0,next_val = nil)
    @val = value
    @next = next_val
  end
end

def dedup_linked_list(head)
  return head unless head
  hash_vals = {}
  current_node = head
  while(current_node != nil)
    if !hash_vals.has_key?(current_node.val)
      hash_vals[current_node.val] = 1
    end
    current_node = current_node.next
  end

  new_node = Node.new()
  current_node = new_node
  previous_node = nil
  hash_vals.keys.each do |key|
    if previous_node == nil
      new_node.next = Node.new(key)
      previous_node = new_node.next
    else
      previous_node.next = Node.new(key)
      previous_node = previous_node.next
    end
  end
  return current_node.next
end
