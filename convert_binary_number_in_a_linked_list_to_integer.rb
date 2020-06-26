# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
  current_node = head
  result = ""
  while(current_node != nil)
    result += current_node.val.to_s
    current_node = current_node.next
  end
  result = result.to_i(2)
end
