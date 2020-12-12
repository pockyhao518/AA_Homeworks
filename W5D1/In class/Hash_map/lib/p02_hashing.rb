require "byebug"
class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    # debugger
    final_id = 0
    self.each do |ele|
      # debugger
      id = ele.object_id.hash
      final_id += id
    end
    # p string.to_i
    final_id
  end
end

class String
  def hash
<<<<<<< HEAD
    result = 0
    self.each_char do |ele|
      # id = ele.object_id.to_s
      id = ele.object_id
      result += id
    end
    result
=======
    final_id
    self.each_char.with_index do |ele, i|
      # id = ele.object_id.to_s
      id = ele.object_id.to_i * i
      final_id += id
    end
    final_id
>>>>>>> aab12772b0807ee80262b8fabb825bb100599d07
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
