class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    if @count == @store.length
      resize!
      @store[key.hash % @store.length] << key
      @count += 1
    else
      if !self.include?(key)
       @store[key.hash % @store.length] << key 
       @count += 1
      end
    end
  end

  def include?(key)
    @store[key.hash % @store.length].include?(key)
  end

  def remove(key)
    if include?(key)
      @store[key.hash % @store.length].delete(key)
      @count -= 1
    end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num.hash % @store.length]
  end

  def num_buckets
    @store.length
  end

  def resize!
    temp_store = Array.new(@store.length * 2) { Array.new }
    @store.each do |busket|
      busket.each do |ele|
        temp_store[ele.hash % temp_store.length] << ele
      end
    end
    @store = temp_store
  end
end
