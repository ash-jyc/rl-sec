class Node
  attr_accessor :next_node

  def initialize(next_node = nil)
    @next_node = next_node
  end
end

def create_list
  node1 = Node.new
  node2 = Node.new
  node3 = Node.new

  node1.next_node = node2
  node2.next_node = node3
  node3.next_node = node1

  node1
end

list = create_list