require_relative './piece.rb'
require_relative './stepable.rb'

class King < Piece
    include Stepable

    def symbol
      '♚'.colorize(color)
    end
  
    protected
  
    def move_diffs
      # return an array of diffs representing where a King can step to
      # [[+x1, +y1], [+x2, +y2], etc]
      
      [[1,1],[1,-1],[-1,-1],[-1,1],[1,0],[0,1],[-1,0],[0,-1]]
    
  end
end