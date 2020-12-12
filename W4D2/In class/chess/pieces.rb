class Pieces #super class
    def initialize(color,board, pos)
        @color: Symbol 
        @board: Board
        @pos = []
    end

    def to_s
        
    end

    def empty?
        
    end

    def valid_moves? 
        
    end

    def pos=(val)
        
    end



end

#4 categories
#   slidiing pieces (Bishop/Rook/Queen)
#   stepping pieces (Knight/King)
#   null pieces (occupy the 'empty' spaces)
#   pawns (we'll do this class last)