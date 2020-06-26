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
  return head if head == nil
  queue = []
  current_node = head
  duplicates = {}
  previous = nil
  while(current_node != nil) 
    if current_node.val == previous 
      duplicates[current_node.val] = current_node.val
    end
    queue << current_node.val
    previous = current_node.val
    current_node = current_node.next
  end
  new_list = ListNode.new()
  new_list_pointer = new_list

  while(!queue.empty?)
    val = queue.shift
    if !duplicates.has_key?(val)
      new_node = ListNode.new(val)
      new_list_pointer.next = new_node
      new_list_pointer = new_list_pointer.next
    end

  end
  return new_list.next

end

#note
#This is a naive solution with O(n) time complexity and O(n) space complexity  - it uses a queue and hash for lookup 


