def has_cycle?(head)
  return false if head == nil
  slow = head
  fast = head.next
  while(slow != fast)
    if(fast == nil || fast.next == nil)
      return false
    end
    slow = slow.next
    fast = fast.next.next
  end
  return true
end
