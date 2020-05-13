require 'spec_helper'
require '../queue.rb'

RSpec.describe MyQueue do 
  before(:all) do 
    class PrintQueue
      include MyQueue
    end
    @print_queue = PrintQueue.new
    @print_queue.enqueue('Print Resume #1')
    @print_queue.enqueue('Print Cover Letter belonging to Mary')
  end

  describe "length" do 
    it "returns the number of elements in the queue" do 
      expect(@print_queue.length).to eql(2)
      expect(@print_queue.length).not_to eql(1)
    end
  end

  describe "count" do 
    it "returns the number of elements in the queue" do 
      expect(@print_queue.count).to eql(2) 
      expect(@print_queue.length).not_to eql(1)
    end
  end

  describe "size" do 
    it "returns the number of elements in the queue" do 
      expect(@print_queue.length).to eql(2) 
      expect(@print_queue.length).not_to eql(1)
    end
  end

  describe "length, size and count" do 
    it "all return the same value" do
      expect(@print_queue.length).to eql(@print_queue.size)
      expect(@print_queue.length).to eql(@print_queue.count)
      expect(@print_queue.count).to eql(@print_queue.size)
    end
  end

  describe "first" do 
    it "returns the first element in the queue" do 
      expect(@print_queue.first).to eql('Print Resume #1')
      expect(@print_queue.first).not_to eql('Print Cover Letter belonging to Mary')
    end
  end

  describe "first and front" do 
    it "all return the same value" do
      expect(@print_queue.first).to eql(@print_queue.front)
    end
  end

  describe "empty?" do 
    it "returns true if the queue is empty" do 
      expect(@print_queue.empty?).to be false
    end

    it "returns false if the queue is not empty" do
      expect(@print_queue.empty?).not_to be true
    end
  end

  describe "enqueue" do 
    it "add an element to the queue, increase the count by 1" do 
      expect{@print_queue.enqueue('Print Bank Statement')}.to change{@print_queue.length}.by(1)
    end
  end

  describe "dequeue" do 
    it "removes first element, decreases the count by 1 and returns the element dequeued" do 
      expect{@print_queue.dequeue}.to change{@print_queue.length}.by(-1)
      expect(@print_queue.dequeue).to eql('Print Cover Letter belonging to Mary')  
    end 
  end

end
