require_relative './piece.rb'
require_relative './stepable.rb'

class Knight < Piece

    def symbol
        '♞'.colorize(color)
    end

    def move_diffs
        [[1, 2],[1, -2],[2, 1],[2, -1],[-1, -2],[-1, 2],[-2, -1],[-2, 1]]
    end
end