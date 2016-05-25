require_relative 'collections/linked_list'


def reverse_list(list_node, previous=nil)
  reverse_list(list_node.next_node, list_node) unless list_node.next_node.nil?
  list_node.next_node = previous
end


list = LinkedList.new(12)
list.add_item(99)
list.add_item(37)

puts 'original list'
list.print_items
puts ''


head = list.tail
tail = list.head
reverse_list(list.head)
list.head = head
list.tail = tail

puts 'reversed list'
list.print_items
