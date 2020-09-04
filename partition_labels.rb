# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  indices = {}
  s.each_char.with_index do |char, i|
    if indices[char]
      indices[char][1] = i
    else
      indices[char] = [i,i]
    end
  end
  compressed = []
  current = [0,0]
  indices.each do |key,value|
    if current[1] >= value[0]
      current[1] = [value[1], current[1]].max
    else
      compressed << current
      current = value
    end
  end
  compressed << current
  compressed.map do |range|
    range[1] - range[0] + 1 
  end
end
