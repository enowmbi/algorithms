require 'spec_helper.rb'
require '../single_linked_list'

RSpec.describe SingleLinkedList do 
  before(:all) do 
    @book = Node.new('Acts') 
    @book2 = Node.new('Romans')
    @linked_list = SingleLinkedList.new()
    @linked_list2 = SingleLinkedList.new(@book)
  end

  describe "initialize" do 
    it "returns nil if no argument is passed" do 
      expect(@linked_list.length).to eql(0)
      expect(@linked_list.head).to be nil
    end
    it "returns node passed as argument and increases length by 1" do 
      expect(@linked_list2.length).to eql(1)
      expect(@linked_list2.head).to eql(@book)
    end
  end

  describe "traverse" do 
    before(:each){@linked_list2.head.next_node = @book2}
    it "prints an array of all nodes in the list" do 
      expect(@linked_list2.traverse).to eql([@book,@book2])
    end
  end
  describe "traverse_in_reverse_order" do 
    before(:each){@linked_list2.head.next_node = @book2}
    it "prints an array of all nodes in the list in reverse order" do 
      expect(@linked_list2.traverse_in_reverse_order).to eql([@book2,@book])
    end
  end

  describe "insertion_at_head" do 
    before(:all) do 
      @book3 = Node.new('1 Corinthians')
      @book4 = Node.new('2 Corinthians')
    end
    it "inserts a node at the head of the list and increases the length by 1" do 
      expect{@linked_list2.insert_at_head(@book3)}.to change{@linked_list2.length}.by(1)
      expect(@linked_list2.head).to eql(@book3)
    end
    it "is thesame as prepend" do 
      expect{@linked_list2.prepend(@book4)}.to change{@linked_list2.length}.by(1)
      expect(@linked_list2.head).to eql(@book4)
    end
  end

  xdescribe "insertion_at_tail" do
    before(:all) do 
      @book5 = Node.new('Galatians')
      @book6 = Node.new('Ephesians')
    end
    it "inserts a node at the tail of the list and increases the length by 1" do 
      expect{@linked_list2.insert_at_tail(@book5)}.to change{@linked_list2.length}.by(1)
      expect(@linked_list2.tail).to eql(@book5)
    end
    it "is the same as append" do 
      expect{@linked_list2.append(@book6)}.to change{@linked_list2.length}.by(1)
      expect(@linked_list2.tail).to eql(@book6)
    end
  end

  describe "empty?" do 
    it "returns false if linked list is not empty" do 
      expect(@linked_list2.empty?).to be false
    end

    it "returns true if linked list is empty" do 
      expect(@linked_list.empty?).to be true
    end
  end

  describe "first and head" do 
    it "return the same value" do 
      expect(@linked_list.head).to eql(@linked_list.first)
    end
  end

  describe "last and tail" do 
    it "return the same value" do 
      expect(@linked_list.tail).to eql(@linked_list.last)
    end
  end

  xdescribe "find_node_by_value" do 
    it "returns an array of positions where nodes with matching values are found" do 
      @linked_list2.insert_at_tail(Node.new('Philipians'))
      expect(@linked_list2.find_node_by_value('Philipians')).to eql([['Philipians',@linked_list2.length]]) 
    end
  end

  describe "delete_first_node" do 


  end
  describe "delete_last_node" do 

  end

end
