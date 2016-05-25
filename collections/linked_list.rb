
class LinkedList
  attr_accessor :head, :tail

  def initialize(value)
    @head = LinkedListNode.new(value)
    @tail = @head
  end

  def add_item(value)
    node = LinkedListNode.new(value)
    @tail.next_node = node
    @tail = node
  end

  def print_items
    print_values(@head)
  end

  protected

  class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
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
end
