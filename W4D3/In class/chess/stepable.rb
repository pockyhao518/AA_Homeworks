# require_relative "./piece.rb"

module Stepable

    def moves
        # create array to collect moves
        collected = []
        move_diffs.each do |position|
            new_move = [(@pos[0] + position[0]), (@pos[1] + position[1])]
            if (@board.valid_position?(new_move)) 
                collected << new_move 
            elsif
                @board[new_move].color! = @color
                collected << new_move
            end
            # OR on the board and contains a piece of the opposite color
        end
        # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if it is:
        # on the board and empty
        # return the final array of moves
        collected
    end

    private

    def move_diffs
       # when we call it, it comes from king and knight 
    end

    
end