def odd_even_linked_list(head = @head)
  if head == nil
    return head
  end

  even = even_head = head.next_node
  odd = head
  #1->2->3->4->5->nil
  #1->3->5->2->4->nil
  while(even != nil && even.next_node != nil)
    odd.next_node = even.next_node
    odd = odd.next_node
    even.next_node = odd.next_node
    even = even.next_node
  end

  odd.next_node = even_head  
  return head
end


