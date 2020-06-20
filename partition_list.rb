def partition(head,value)
  before_head = Node.new(0)
  before = before_head
  after_head = Node.new(0)
  after = after_head

  while(head != nil)
    if head.val >= 3
      after.next = head
      after = after.next
    else
      before.next = head
      before = before.next
    end
    head = head.next
  end
  after.next = nil
  before.next = after_head.next
  return before_head.next
end



