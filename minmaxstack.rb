require "my_stack"
class MinMaxStack
  def initialize
    @store = MyStack.new
  end

  def peek
    @store.peek[:value]
  end

  def pop
    @store.pop[:value]
  end

  def push(val)
    if self.empty?
      h = {value: val, min: val, max: val}
    else
      new_max = val > self.max ? val : self.max
      new_min = val < self.min ? val : self.min
      h = {value: val, max: new_max, min: new_min}
      @store.push(h)
    end
  end

  def max
    @store.peek[:max]
  end

  def min
    @store.peek[:min]
  end

  def empty?
    @store.empty?
  end

  def size
    @store.size
  end

end
