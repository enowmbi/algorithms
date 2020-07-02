# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[List[int]]}
def levelOrder(root)
  result = []
  return result if root == nil

  queue = []
  queue << root
  while(!queue.empty?)
    level_size = queue.size
    level = []
    level_size.times do 
      current_node = queue.shift
      level << current_node.val
      current_node.children.each do |child|
        queue << child if child != nil
      end
    end
    result << level
  end
  return result    
end
