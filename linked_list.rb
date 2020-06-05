#list1 => 2->4->3
#list2 => 5->6->4

#reverse the linklist and then add them 

#Definition for singly-linked list.

class Node 
attr_accessor :value,:next_node
def initialize(val,_next = nil)
  @value = val
  @next_node = _next
end
end

class LinkedList
 attr_accessor :head

def initialize(node = nil)
 @head = node
end

def add_node(node)
   if @head == nil 
     @head = node
   else
    #iterate until you get to an empty node and add to it
     current = @head
     while(current != nil)
         current = current.next_node
     end
  end
   current.next_node = node
end

def print
  temp = @head
  while(temp != nil)
    print "#{temp.value} -> "
    temp = temp.next_node
 end
end

def reverse_list

 current = @head
 previous = next_node = nil

while(current != nil)
   next_node = current.next_node
   current.next_node = previous 
   previous = current
   current = next_node
 end
@head = current
end
end

list1 = LinkedList.new(Node.new(2))
list1.add_node(Node.new(4))
list1.add_node(Node.new(3))

list2 = LinkedList.new(Node.new(5))
list2.add_node(Node.new(6))
list2.add_node(Node.new(4))

list1 = list1.reverse_list
list2 = list2.reverse_list

def add_linked_list(list1,list2)
list1_rev = list1.reverse_list
list2_rev = list2.reverse_list

list1_head = list1_rev.head
list2_head = list2_rev.head
carry_over = 0
new_list = LinkedList.new()

while(list1_head != nil || list2_head != nil)
 sum = list1_head.value + list2_head.value + carry_over
 carry_over = sum / 10
 value = sum % 10
 new_list.add(Node.new(value))
 list1_head = list1_head.next_node
 list2_head = list2_head.next_node
end 

end

