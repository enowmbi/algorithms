def middle_node(head)
  slow = head
  fast = head
  while(fast != nil && fast.next != nil)
    slow = slow.next
    fast = fast.next.next
  end

  return slow

end
