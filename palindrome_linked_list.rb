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
  #naive solution
  return true if head == nil
  stack = []
  current_node = head
  while(current_node != nil)
    stack << current_node.val
    current_node = current_node.next
  end
  while(head != nil && !stack.empty?)
    if head.val != stack.pop
      return false
    end
    head = head.next
  end
  return true

end
