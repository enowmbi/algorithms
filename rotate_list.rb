# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  #use an array
  collection = []
  current_node = head
  length = 0
  while(current_node != nil)
    collection << current_node.val
    current_node = current_node.next
    length += 1
  end

  1.upto(k) do
    last_element = collection.pop
    collection.unshift(last_element)
  end

  pointer_list = head

  while(!collection.empty?)
    first_element = collection.shift   
    new_node = ListNode.new(first_element)
    pointer_list.next = new_node
    pointer_list = pointer_list.next
  end

  return  head.next

end
