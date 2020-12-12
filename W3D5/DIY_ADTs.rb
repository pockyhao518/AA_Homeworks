class Stack
    def initialize
      # create ivar to store stack here!
      @storage = []
    end

    def push(el)
      # adds an element to the stack
      @storage << el
    end

    def pop
      # removes one element from the stack
      @storage.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
        @storage[0]
    end
  end