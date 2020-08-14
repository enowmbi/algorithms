class CombinationIterator

=begin
    :type characters: String
    :type combination_length: Integer
=end
  def initialize(characters, combination_length)
    @combs = characters.chars.combination(combination_length).to_a 
  end


=begin
    :rtype: String
=end
  def next()
    @combs.shift.join 
  end


=begin
    :rtype: Boolean
=end
  def has_next()
    @combs.any?
  end


end

# Your CombinationIterator object will be instantiated and called as such:
# obj = CombinationIterator.new(characters, combination_length)
# param_1 = obj.next()
# param_2 = obj.has_next()
