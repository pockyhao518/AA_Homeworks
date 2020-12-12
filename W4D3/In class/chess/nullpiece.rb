#should include singletom module
require_relative "./piece.rb"
require "singleton"

class NullPiece < Piece
    include Singleton

    def initialize
        @symbol = symbol
        @color = nil
        
    end

    def moves
        []
    end

    def symbol 
        ' '
    end
end