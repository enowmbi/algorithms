# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  return nil if headA == nil || headB == nil
  pointer_a = headA
  pointer_b = headB
  while(pointer_a != pointer_b)
    if(pointer_a == nil)
      pointer_a = headB
    else
      pointer_a = pointer_a.next
    end
    if(pointer_b == nil)
      pointer_b = headA
    else
      pointer_b = pointer_b.next
    end        
  end
  return pointer_a
end



