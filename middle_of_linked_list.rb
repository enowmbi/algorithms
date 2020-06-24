# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  #use two pointer technique
  slow_pointer = head
  fast_pointer = head
  while(fast_pointer != nil && fast_pointer.next != nil)
    slow_pointer = slow_pointer.next
    fast_pointer = fast_pointer.next.next
  end
  return slow_pointer
end

  # the second condition (fast_pointer.next != nil takes care of fast_pointer.next.next
