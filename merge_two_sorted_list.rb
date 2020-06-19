def merge_two_list(l1,l2)
  return l1 if l2 == nil
  return l2 if l1 == nil

  temp_node = ListNode.new(0)  #initialize a temp node with value of 0
  current_node = temp_node

  while(l1 != nil && l2 != nil)
    if l1.val  < l2.val
      current_node.next = l1
      l1 = l1.next
    elsif l2.val < l1.val
      current_node.next = l2
      l2 = l2.next
    end
    current_node = current_node.next
  end

  if(l1 == nil)
    current_node.next = l2
    l2 = l2.next
  end

  if(l2 == nil)
    current_node.next = l1
    l1 = l1.next
  end

  return temp_node.next

end 
