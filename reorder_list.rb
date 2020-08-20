# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  return nil if head.nil?
  return head if head.next.nil?

  original_head = head
  fast, slow = head, head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end

  while head.next # Sever the list in half at slow.
    if head.next == slow
      head.next = nil
      break
    end

    head = head.next
  end

  rev_second_half = reverse_list(slow)

  head_2 = original_head

  while head_2 && rev_second_half
    tmp_1 = head_2.next

    head_2.next = rev_second_half

    head_2 = rev_second_half
    rev_second_half = tmp_1
  end

  original_head
end

def reverse_list(head)
  current = head.next
  previous = head
  previous.next = nil

  while current
    tmp = current.next
    current.next = previous
    previous = current
    current = tmp
  end

  previous
end
