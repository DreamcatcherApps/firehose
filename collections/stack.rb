
class Stack
  attr_reader :data

  def initialize
    @data = []
  end

  # Push an item onto the stack
  def push(element)
    @data[@data.length] = element
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    @data.delete_at @data.length - 1 if @data.length > 0
  end

  def empty?
    @data.length == 0
  end
end
