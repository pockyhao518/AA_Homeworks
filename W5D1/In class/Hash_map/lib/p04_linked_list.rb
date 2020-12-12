class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end
require 'byebug'
class LinkedList
  include Enumerable
  attr_accessor :head, :tail
  def initialize
    @head= Node.new()
    @tail = Node.new()
    @head.next = @tail
    @tail.prev = @head
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @head.next
  end

  def last
    @tail.prev
  end

  def empty?
    first == tail && last == head
  end

  def get(key)
    self.each{|node| return node.val if node.key == key}
  end

  def include?(key)
    self.any?{|node| node.key == key}
  end

  def append(key, val)
    node = Node.new(key, val)
    last.next = node
    node.prev = last
    node.next = @tail
    @tail.prev = node
  end

  def update(key, val)
    self.each do |node|
      if node.key == key
        node.val = val
      end
    end
  end

  def remove(key)
    node = nil
    self.each{|n| node = n if n.key == key}
    node.next.prev = node.prev
    node.prev.next = node.next
  end

  def each
    # debugger
    return [] if empty?
    # arr = []
    root = @head
    until root == last
      yield root.next
      root = root.next 
    end
  end

  # uncomment when you have `each` working and `Enumerable` included
  def to_s
    inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  end
end
