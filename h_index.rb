# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
  return 0 if citations.length.zero?

  citations = citations.sort.reverse 
  max = 0

  citations.each_with_index do |citation, index|
    min = [citation, index+1].min
    max = [min, max].max
  end

  max
end
