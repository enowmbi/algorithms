require 'spec_helper'
require '../tree'

RSpec.describe Node do 
  before(:all) {@node = Node.new({value: 'Jessica'})}
  describe 'initialize' do 
    it 'succeeds with value' do 
      expect(@node).to be_truthy
    end
    it 'returns an object of type Node' do 
      expect(@node).to be_a Node
    end
  end
end

RSpec.describe Tree do 
  before(:all){@suits = Tree.new(@node)}
  describe 'initialize' do 
    it 'succeeds with new node' do 
      expect(@suits).to be_truthy
    end
    it 'returns an object of type Tree' do
      expect(@suits).to be_a Tree
    end
  end
end

