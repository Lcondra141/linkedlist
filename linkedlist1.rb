class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
      @data = nil
  end

  def push(value)
  @data = LinkedListNode.new(value, @data)
  end

  def pop
  first_node = @data.value
  @data = @data.next_node
  return first_node
  end
end

def print_values(list_node)
      print "#{list_node.value} --> "
      if list_node.next_node.nil?
      print "nil\n"
      return
  else
      print_values(list_node.next_node)
  end
end

def reverse_list(list, previous=nil)
  head = list.next_node
  list.next_node = previous
  if head
      reverse_list(head, list)
  else
      list
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


revlist = reverse_list(node3)
print_values(node3)
puts "-------"
print_values(revlist)
