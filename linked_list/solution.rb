class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :top

  def initialize
    @top = nil
  end

  # Push an item onto the stack
  def push(element)
    @top = LinkedListNode.new(element.value, @top)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    return false if @top.nil?
    temp = @top
    @top = temp.next_node
    temp
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

def reverse_list_with_stack(list)
  stack = Stack.new

  while list
    stack.push(list)
    list = list.next_node
  end
  stack.top
end
