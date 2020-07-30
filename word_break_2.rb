# @param {String} s
# @param {String[]} word_dict
# @return {String[]}
def word_break(s, word_dict)
  dfs(s, word_dict, {})
end

def dfs(string, word_dict, map)
  return map[string] if map[string]

  res = []
  if string.length.zero?
    res << ''
    return res
  end

  word_dict.each do |word|
    if string.start_with?(word)
      list = dfs(string[word.length..-1], word_dict, map)
      list.each do |sub|
        res << "#{word}#{sub.empty? ? '' : ' '}#{sub}"
      end
    end
  end

  map[string] = res
  res
end
