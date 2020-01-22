class LinkedListNode
  attr_accessor :value, :next_node

  # final next_node = nil, which = end of LinkedList
  def initialize(value, next_node=nil)
    @value = value
    # default next_node = nil
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push an item onto the stack
  def push(value)
  @data = LinkedListNode.new(value, @data)


    # This should function kind of like print_values
    # except we're pushing the integer to the data storage

  end

  # Pop an item off the stack
  # Remove the last item that was pushed
  # onto the stack and return it to the user
  def pop
  first_node = @data.value
  @data = @data.next_node
  return first_node
  end
end

def print_values(list_node)
    print "#{list_node.value} --> "
    # Checks to see if end of LinkedList
    if list_node.next_node.nil?
      # prints nil, indicating end of LinkedList
      print "nil\n"
      return
    else
      # Prints the new number, followed by the
      # previous LinkedList
      print_values(list_node.next_node)
    end
end

def reverse_list(list)
stack = Stack.new

while list
  stack.push(list.value)
    list = list.next_node
end
return stack.data
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)



revlist = reverse_list(node3)
print_values(node3)
puts "-------"
print_values(revlist)

