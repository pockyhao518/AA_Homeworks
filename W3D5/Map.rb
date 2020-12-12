class Map
    def initialize
        @storage = []
    end
  
    def set(key, value)
        if self.get(key).nil?
            @storage << [key, value]
        else
            i = self.get(key)
            @storage[i] = [key, value] 
        end
    end

    def get(key)
        @storage.each_with_index do |sub_arr, i|
            if sub_arr[0] == key
                return i
            end
        end
        return nil
    end

    def delete(key)
        i = self.get(key)
        @storage = @storage[0...i] + @storage[i + 1..-1]
    end
    
    def show
        @storage
    end
end