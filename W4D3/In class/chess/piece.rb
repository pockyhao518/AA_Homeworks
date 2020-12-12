
class Piece #super class
    attr_reader :board
    def initialize(color, board, pos)
        @color = color.to_sym                # :White  :Black
        @board = board
        @pos = pos
    end

    def moves
        #should return an array of places a piece can move to
        #will just call this once we have subclasses 
        #then within subclasses, we'll do self.moves
    end

    def to_s
        symbol.to_s
    end

    def empty?
        false
    end

    def valid_moves? 
        
    end



end

#4 categories
#   slidiing pieces (Bishop/Rook/Queen)
#   stepping pieces (Knight/King)
#   null pieces (occupy the 'empty' spaces)
#   pawns (we'll do this class last)