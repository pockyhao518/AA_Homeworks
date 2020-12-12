require_relative "pieces.rb"
class Board
    attr_reader :board
    def initialize
        #should hold 2D array
        @board = Array.new(8) {Array.new(8,nil)}
        # pieces
    end

    def [](pos)
        row = pos[0]
        col = pos[1]
        @board[row][col]
    end
    
    def []=(pos, value)
        row = pos[0]
        col = pos[1]
        @board[row][col] = value
    end



    def valid_pos?(pos)
        #if position is nil and on the board 
        return true if self[pos].nil? && ((pos[0] < 8 && pos[0] >= 0) && (pos[1] < 8 && pos[1] >= 0))
        false
    end


    def move_piece(start_pos, end_pos) #color will be added
        raise "not a valid position" if !valid_pos?(end_pos)
        raise "there is no piece at that position" if self[start_pos].nil?  #&& if piece[color] at end_pos ==  color  
        
        self[end_pos] = self[start_pos]
        self[start_pos] = nil
    end


    def add_piece(piece, pos)
        self[pos] = piece
    end

    def checkmate?(color)
        
    end

    def in_check?(color)
        
    end

    def find_king(color)
        
    end

    # def pieces
        #is this for putting a certain piece on the board?
        #will give a collection of all the pieces on the board
    # end

    # def dup
        
    # end
end