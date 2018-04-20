class Stack
  def initialize
    @holder = []
  end

  def add(el)
    @holder.push(el)
  end

  def remove
    @holder.pop
  end

  def show
    p @holder
  end
end

if __FILE__ == $0
  my_stack = Stack.new
  10.times do |i|
    my_stack.add(i)
    my_stack.show
  end
  10.times do |i|
    my_stack.remove
    my_stack.show
  end
end
