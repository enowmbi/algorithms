# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a) 
  #flip each array
  a.each{|arr| arr.reverse!}
  #invert array
  0.upto(a.length - 1) do |i|
    0.upto(a[i].length - 1) do |j| 
      if a[i][j] == 1
        a[i][j] = 0
      else
        a[i][j] = 1
      end
    end
  end
  return a
end
