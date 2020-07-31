def print_reversed_list(head)
  print nil if head == nil
  current_node = head
  previous_node = next_node = nil
  while(current_node != nil)
    next_node = current_node.next
    current_node.next = previous_node 
    previous_node = current_node
    current_node = next_node
  end
  print_list(previous_node)
end

def print_list(head)
  print "" if head == nil
  current_node = head
  while(current_node != nil)
    puts "#{current_node.val}"
  end    
end
