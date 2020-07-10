# Definition for a Node.
# class Node
#     attr_accessor :val, :prev, :next, :child
#     def initialize(val=nil, prev=nil, next_=nil, child=nil)
#         @val = val
#         @prev = prev
#         @next = next_
#         @child = child
#     end
# end

# @param {Node} root
# @return {Node}
def flatten(root)
  head = root  
  while root != nil    
    if root.child != nil
      temp_node = root.next  

      flattened_child = flatten(root.child) # 2
      tail_node = find_tail(flattened_child) # 2

      root.next = flattened_child
      flattened_child.prev = root

      if temp_node
        tail_node.next = temp_node 
        temp_node.prev = tail_node  
      end      
      root.child = nil
    end    
    root = root.next        
  end
  return head
end

def find_tail(current_node)  
  while current_node.next != nil
    current_node = current_node.next
  end  
  return current_node
end
