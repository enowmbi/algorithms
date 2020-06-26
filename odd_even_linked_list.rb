def odd_even_linked_list(head)
  return head if head == nil

  odd_pointer = head
  even_pointer = head.next
  even_head = ListNode.new()
  even_head = even_pointer

  while(odd_pointer.next != nil && even_pointer.next != nil)
    odd_pointer.next = even_pointer.next
    even_pointer.next = even_pointer.next.next
    odd_pointer = odd_pointer.next
    even_pointer = even_pointer.next
  end
  odd_pointer.next = even_head.next

  return head
end


