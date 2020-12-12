require_relative 'p04_linked_list'
# require 'byebug'
class HashMap
  attr_accessor :count
include Enumerable
  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { LinkedList.new }
    @count = 0
  end

  def include?(key)
    bucket_id = key.hash % @store.length
    @store[bucket_id].include?(key)
  end

  def set(key, val)
    bucket_id = key.hash % @store.length
    if @store[bucket_id].include?(key)
      @store[bucket_id].update(key,val)
    else
      @store[bucket_id].append(key,val)
    end
  end

  def get(key)
    bucket_id = key.hash % @store.length
    @store[bucket_id].each do |node|
      if node.key == key
        return node.val
      end
    end
    nil

  end

  def delete(key)
    bucket_id = key.hash % @store.length
    if @store[bucket_id].include?(key)
      @store[bucket_id].remove(key)
    end
  end

  def each
    return [] if @store.length == 0
    @store.each do |bucket|
      # debugger
      # root = bucket.head
      # until root == bucket.last
      #   a = { root.next.key => root.next.val }

      #   yield a
      #   root = root.next
      # end
      bucket.each do |node|
        # debugger
        yield [node.key, node.val]
        
      end
    end
  end

  # uncomment when you have Enumerable included
  # def to_s
  #   pairs = inject([]) do |strs, (k, v)|
  #     strs << "#{k.to_s} => #{v.to_s}"
  #   end
  #   "{\n" + pairs.join(",\n") + "\n}"
  # end

  alias_method :[], :get
  alias_method :[]=, :set

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def bucket(key)
    # optional but useful; return the bucket corresponding to `key`
  end
end
