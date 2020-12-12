class Queue
    def initialize
      # create ivar to store stack here!
      @storage = []
    end

    def enqueue(el)
      # adds an element to the stack
      @storage << el
    end

    def dequeue
      # removes one element from the stack
      @storage.shift
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @storage[0]
    end
  end