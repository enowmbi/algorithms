def add_two_numbers(list_node_1,list_node_2)
  pointer_1 = list_node_1
  pointer_2 = list_node_2
  list_node_3 = ListNode.new()
  pointer_3 = list_node_3
  carry_over = 0

  while(pointer_1 != nil || pointer_2 != nil)
    val1 = pointer_1 ? pointer_1.val : 0
    val2 = pointer_2 ? pointer_2.val : 0
    
    current_sum = val1 + val2 + carry_over
last_digit = current_sum % 10
carry_over = current_sum / 10

    new_node = ListNode.new(last_digit)
    pointer_3.next = new_node

    pointer_1 = pointer_1.next if pointer_1
    pointer_2 = pointer_2.next if pointer_2
    pointer_3 = pointer_3.next
  end

  if(carry_over > 0)
     new_node = ListNode.new(carry_over)
     pointer_3.next = new_node
     pointer_3 = pointer_3.next
  end
 
  return l3.next

end

#numbers are stored in reverse form so no need to reverse them
