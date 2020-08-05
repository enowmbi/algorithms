class TrieNode
  attr_accessor :is_end, :children

  def initialize
    @is_end = false
    @children = {}
  end
end

class WordDictionary

=begin
    Initialize your data structure here.
=end
  def initialize()
    @root = TrieNode.new
  end


=begin
    Adds a word into the data structure.
    :type word: String
    :rtype: Void
=end
  def add_word(word)
    node = @root
    word.each_char do |c|
      node.children[c] ||= TrieNode.new
      node = node.children[c]
    end
    node.is_end = true
  end


=begin
    Returns if the word is in the data structure. A word could contain the dot character '.' to represent any one letter.
    :type word: String
    :rtype: Boolean
=end
  def search(word)
    nodes = [@root]
    word.each_char do |c|           
      if c == '.'
        children = nodes.map do |node|
          node.children.values
        end.flatten.compact
        nodes = children
      else
        children = nodes.map do |node|
          node.children[c]
        end.compact
        return false if children.empty?
        nodes = children
      end
    end
    nodes.any?(&:is_end)
  end
end

# Your WordDictionary object will be instantiated and called as such:
# obj = WordDictionary.new()
# obj.add_word(word)
# param_2 = obj.search(word)
