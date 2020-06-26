# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  #optimized solution --using two pointer technique
  return true if head == nil
  slow_pointer = head
  fast_pointer = head

  while(fast_pointer != nil && fast_pointer.next != nil)
    slow_pointer = slow_pointer.next
    fast_pointer = fast_pointer.next.next
  end

  slow_list = reverse_list(slow_pointer)
  original_list = head   

  while(slow_list != nil)
    if(original_list.val != slow_list.val)
      return false
    end
    slow_list = slow_list.next
    original_list = original_list.next
  end

  return true

end

def reverse_list(node)
  current_node = node
  next_node = previous_node = nil

  while(current_node != nil)
    next_node = current_node.next
    current_node.next = previous_node
    previous_node = current_node
    current_node  = next_node
  end
  return  previous_node 
end
