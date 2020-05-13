require 'spec_helper'
require '../stack.rb'

RSpec.describe Stack do 
  before(:all) do 
    class NameStack
      include Stack
    end
    @name_stack = NameStack.new
    @name_stack.push('John')
    @name_stack.push('Mary')
  end

  describe "length" do 
    it "returns the number of elements in the stack" do 
      expect(@name_stack.length).to eql(2)
      expect(@name_stack.length).not_to eql(1)
    end
  end

  describe "count" do 
    it "returns the number of elements in the stack" do 
      expect(@name_stack.count).to eql(2) 
      expect(@name_stack.length).not_to eql(1)
    end
  end

  describe "size" do 
    it "returns the number of elements in the stack" do 
      expect(@name_stack.length).to eql(2) 
      expect(@name_stack.length).not_to eql(1)
    end
  end

  describe "length, size and count" do 
    it "all return the same value" do
      expect(@name_stack.length).to eql(@name_stack.size)
      expect(@name_stack.length).to eql(@name_stack.count)
      expect(@name_stack.count).to eql(@name_stack.size)
    end
  end

  describe "last" do 
    it "returns the last element in the stack" do 
      expect(@name_stack.last).to eql('Mary')
      expect(@name_stack.last).not_to eql('John')
    end
  end

  describe "last, peek and top" do 
    it "all return the same value" do
      expect(@name_stack.last).to eql(@name_stack.peek)
      expect(@name_stack.last).to eql(@name_stack.top)
      expect(@name_stack.peek).to eql(@name_stack.top)
    end
  end

  describe "empty?" do 
    it "returns true if the stack is empty" do 
      expect(@name_stack.empty?).to be false
    end

    it "returns false if the stack is not empty" do
      expect(@name_stack.empty?).not_to be true
    end
  end

  describe "push" do 
    it "inserts element, increases the count by 1 and returns the element inserted" do 
      expect{@name_stack.push('Joseph')}.to change{@name_stack.length}.by(1)
      expect(@name_stack.push('Joseph')).to eql('Joseph')
      expect(@name_stack.last).to eql('Joseph')
    end

  end

  describe "pop" do 
    it "removes last element, decreases the count by 1 and returns the element removed" do 
      expect{@name_stack.pop}.to change{@name_stack.length}.by(-1)
      expect(@name_stack.pop).to eql('Joseph')
    end 
  end

end
