#create a stack from scratch withe the following methods - empty?,length(count,size as aliases),last(peek or top),pop

module Stack 
  attr_reader :length, :last

  def initialize
    @container =[]
    @length = 0
  end

  def last
    #display the last item from container
    return @container.last
  end

  def empty?
    @container.empty?  ? true : false
  end

  def push(item)
    @container << item
    @length += 1
    return self.last
  end

  def pop
    item = @container.pop
    @length -= 1
    return item
  end

  alias :count :length

  alias :size :length

  alias :peek :last

  alias :top :last

end
