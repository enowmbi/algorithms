# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy_head = ListNode.new
  dummy_head.next = head
  fast_pointer = dummy_head
  slow_pointer = dummy_head

  1.upto(n + 1) do
    fast_pointer = fast_pointer.next 
  end
  while(fast_pointer != nil)
    slow_pointer = slow_pointer.next
    fast_pointer = fast_pointer.next
  end
  slow_pointer.next = slow_pointer.next.next

  return dummy_head.next

end
