module MyQueue 
  attr_reader :first,:last,:length

  def initialize
    @container =[]
    @length = 0
  end

  def enqueue(item)
    @container << item
    @length += 1
    return @container.last
  end

  def dequeue
    item = @container.pop
    @length -= 1
    return item
  end

  def first
    @container.first
  end

  def empty?
    @container.empty? ? true : false
  end

  alias :count :length

  alias :size :length

  alias :front :first

end
