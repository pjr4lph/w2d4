class MyStack

  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(el)
    @store.push(el)
  end

  def peek
    @store[-1]
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end
