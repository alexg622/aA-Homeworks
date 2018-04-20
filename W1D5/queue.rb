class Queue
  def initialize
    @holder = []
  end

  def dequeue
    @holder.pop
  end

  def enqueue(el)
    @holder.unshift(el)
  end

  def show
    p @holder
  end
end

if __File__ = $0
  queue = Queue.new
  10.times do |i|
    queue.enqueue(i)
    queue.show
  end
  10.times do |i|
    queue.dequeue
    queue.show
  end
end
