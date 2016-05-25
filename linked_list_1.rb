require_relative 'collections/linked_list'
require_relative 'collections/stack'


def reverse_list(list)
  stack = Stack.new

  # Push list elements onto stack
  node = list.head
  until node.nil?
    stack.push(node.value)
    node = node.next_node
  end

  item = stack.pop
  reversed = LinkedList.new(item) unless item.nil?
  until stack.empty?
    reversed.add_item(stack.pop)
  end

  reversed
end


list = LinkedList.new(12)
list.add_item(99)
list.add_item(37)

puts 'original list'
list.print_items
puts ''


reversed = reverse_list(list)

puts 'reversed list'
reversed.print_items
