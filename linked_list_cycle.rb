# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head == nil

  slow_pointer = head
  fast_pointer = head.next   

  while(slow_pointer != fast_pointer)
    if(fast_pointer == nil || fast_pointer.next == nil)
      return false
    end

    slow_pointer = slow_pointer.next
    fast_pointer = fast_pointer.next.next
  end
  return true
end
