# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  #use two stacks to hold the values     
  pointer_1 = l1
  pointer_2 = l2
  l3 = ListNode.new()
  pointer_3 = l3
  stack_1 = []
  stack_2 = []
  carry_over = 0

  while(pointer_1 != nil)
    stack_1 << pointer_1.val
    pointer_1 = pointer_1.next
  end

  while(pointer_2 != nil)
    stack_2 << pointer_2.val
    pointer_2 = pointer_2.next
  end

  while(!stack_1.empty? || !stack_2.empty?)

    val1 = stack_1.empty? ? 0 : stack_1.pop
    val2 = stack_2.empty? ? 0 : stack_2.pop

    current_sum  = val1 + val2 + carry_over
    first_digit = current_sum % 10
    carry_over = current_sum / 10  

    new_node = ListNode.new(first_digit)        
    pointer_3.next = new_node
    pointer_3 = pointer_3.next         
  end

  if(carry_over > 0)
    new_node = ListNode.new(carry_over)
    pointer_3.next = new_node
    pointer_3 = pointer_3.next
  end

  current_node = l3.next
  next_node = previous_node = nil
  while(current_node != nil)
    next_node = current_node.next
    current_node.next = previous_node
    previous_node = current_node
    current_node = next_node
  end

  return previous_node
end
