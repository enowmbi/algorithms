def reverse_linked_list(head)
  #test case input => head => 1->2->3.->4->5 -> nil 
  #output => head => 5->4->3->2->1->nil
  
  current = head
  previous = next_node = nil
  while(current != nil)
    next_node = current.next
    current.next = previous
    previous = current
    current = next_node
  end
    
  head = previous
end



