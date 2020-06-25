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
  #use queue and iterate through the list once.use a counter to know the iteration value to skip
  queue = [] 
  pointer_1 = head
  length = 0
  pointer_2 = head
  while(pointer_1 != nil)
    queue << pointer_1.val 
    length += 1
    pointer_1 = pointer_1.next
  end
  count = 0
  while(!queue.empty?)
    count += 1
    if count == (length - n) + 1
      queue.shift
    else
      val = queue.shift
      new_node = ListNode.new(val)
      pointer_2.next = new_node
      pointer_2 = pointer_2.next
    end
  end

  return head.next 

end
