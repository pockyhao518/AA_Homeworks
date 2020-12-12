class Hanoi

    attr_reader :grid, :height

    def initialize(height)
        raise ArgumentError if !height.is_a?(Integer)
        @height = height
        @grid = Array.new(3) { Array.new([])}
        build_tower
    end

    def build_tower
        (0...height).each do |i|
            @grid[0] << i + 1
        end
    end

    def render
       p 'Tower 0: ' + @grid[0].join(" ")  + ' Tower 1: ' + @grid[1].join(" ")  + ' Tower 2: ' + @grid[2].join(" ") 
    end
    
    def move(start_tower, next_tower)
        if valid_move(start_tower, next_tower)
            @grid[next_tower].unshift(@grid[start_tower].shift)
        end
    end

    def valid_move(start_tower, next_tower)
        raise "nothing in start_tower" if @grid[start_tower].empty?
        
        if @grid[next_tower].empty?
            return true
        elsif @grid[start_tower].first < @grid[next_tower].first
            return true
        end
        false            
    end

    def won?
        @grid.first.empty? && @grid[1].empty?
    end
  
end

def play
    p "Please enter height of tower"
    height = gets.chomp.to_i
    ha = Hanoi.new(height)
    ha.build_tower 
    
    until ha.won?
        begin
            ha.render
            p "Please enter start tower"
            start_tower = gets.chomp.to_i
            p "Please enter end tower"
            end_tower = gets.chomp.to_i
            if ha.valid_move(start_tower, end_tower)
                ha.move(start_tower, end_tower)
            end
        rescue
            p "invalid move"
            retry
        end
    end
end



