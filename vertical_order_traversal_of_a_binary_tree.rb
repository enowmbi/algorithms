# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}
def vertical_traversal(root)
  return [] if root == nil
  positions_hash = {}
  position(root,[0,0],positions_hash)
  p positions_hash
  result = []
  positions_hash.sort.each do |key,val|
    result << val.sort.reverse.to_h.values.flatten
  end
  return result

end

def position(root,position,positions_hash)
  x,y = position

    if positions_hash.has_key?(x)
        if positions_hash[x].has_key?(y)
            positions_hash[x][y] = (positions_hash[x][y]<<root.val).sort
        else
            positions_hash[x][y] = [root.val]
        end
    else
        positions_hash[x] = {y=>[root.val]}
    end


    position(root.left,[x-1,y-1],positions_hash) if root.left
    position(root.right,[x+1,y-1],positions_hash) if root.right
end
