# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  return head if head == nil

  less_than_list = ListNode.new()    
  greater_than_list = ListNode.new()

  pointer_less_than = less_than_list 
  dummy_less_than_list = less_than_list
  pointer_greater_than = greater_than_list
  dummy_greater_than_list = greater_than_list

  while(head != nil)
    new_node = ListNode.new(head.val)
    if(head.val < x)
      pointer_less_than.next = new_node
      pointer_less_than = pointer_less_than.next
      less_than_list = less_than_list.next
    else
      pointer_greater_than.next = new_node
      pointer_greater_than = pointer_greater_than.next
      greater_than_list = greater_than_list.next
    end    
    head = head.next
  end

  less_than_list.next = dummy_greater_than_list.next

  return dummy_less_than_list.next

end
