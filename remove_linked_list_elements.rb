require_relative './node'
class Solution
  def remove_elements(head,val)
    while(head != nil && head.val == val)
      head = head.next
    end

    next_node = nil
    current_node = previous_node = head

    while(current_node != nil)
      next_node = current_node.next
      if current_node.val == val
        previous_node.next = next_node
        current_node = next_node
      else
        current_node = current_node.next
        previous_node = current_node
      end
    end
    return head

  end
end
