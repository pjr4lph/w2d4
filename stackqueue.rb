require_relative "my_stack"

class StackQueue
  def initialize
    @in = MyStack.new
    @out = MyStack.new
  end

  def enqueue(el)
    @in.push(el)
  end

  def dequeue
    if @out.empty?
      until @in.empty?
        @out.push(@in.pop)
      end
    end
    @out.pop
  end

  def size
    @in.size + @out.size
  end

  def peek
    @out.peek
  end

  def empty?
    @in.empty? && @out.empty?
  end


end
