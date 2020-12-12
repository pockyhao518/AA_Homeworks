class MaxIntSet 
  attr_reader :store
  def initialize(max)
    @store = Array.new(max, false)
  end

  def insert(num) #O(1)
    raise 'Out of bounds' if !is_valid?(num)
    @store[num] = true
  end

  def remove(num) #O(1)
    @store[num] = false
  end

  def include?(num) #O(n)
    @store[num] == true
  end

  private

  def is_valid?(num)
    num < @store.length && num >= 0
  end

  def validate!(num)
    if is_valid?(num)
      @store[num] = true
    end
  end
end


class IntSet

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)#O(n)
    @store[num % 20] << num if !include?(num)
  end

  def remove(num)#O(n)
    @store[num % 20].delete(num)
  end

  def include?(num)#O(n)
    @store[num % 20].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % 20]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_accessor :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num) O(n) + 1
    if @count == @store.length
      resize!
      @store[num % @store.length] << num
      @count += 1
    else
      if !self.include?(num)
       @store[num % @store.length] << num 
       @count += 1
      end
    end
  end

  def remove(num) #O(n)
    if include?(num)
        @store[num % @store.length].delete(num)
        @count -= 1
    end
  end

  def include?(num) #O(n)
    @store[num % @store.length].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % @store.length]
  end

  def num_buckets
    @store.length
  end

  def resize! #O(n)
    temp_store = Array.new(@store.length * 2) { Array.new }
    @store.each do |busket|
      busket.each do |ele|
        temp_store[ele % temp_store.length] << ele
      end
    end
    @store = temp_store
  end
end
