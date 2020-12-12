require_relative "./piece.rb"

class Pawn < Piece

    def symbol
        '♟'.colorize(color)
    end

    def move
        move_forward + move_side
    end

    def move_forward
        possible_moves = []
        x, y = @pos 

        (1..2).each do |step|
            new_move = [(x + step), y]
            if valid_moves?(new_move)
                possible_moves << new_move
            end
        end
        possible_moves
    end

    def move_side
        x, y = @pos 

        new_move = [[(x + 1), (y + 1)], [(x - 1), (y + 1)]]

        new_move.select{|move| @board[move].color != @color} #if that position holds a piece with a different symbol
        
    end
end