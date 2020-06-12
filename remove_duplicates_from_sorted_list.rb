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
def delete_duplicates(head)
  #use two pointer solution
  if head == nil
    return head
  end

  current = head
  first_pointer = current
  second_pointer = current.next
  while(second_pointer != nil)
    if (first_pointer.val == second_pointer.val)
      first_pointer.next = second_pointer.next
      second_pointer = second_pointer.next
    else
      first_pointer = second_pointer
      second_pointer = second_pointer.next            
    end
  end
  return current
end
