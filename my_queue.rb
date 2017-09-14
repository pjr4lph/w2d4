def MyQueue
  def initialize
    @store = []
  end

  def dequeue
    @store.shift
  end

  def enqueue(el)
    @store.push(el)
  end

  def peek
    @store[0]
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end
