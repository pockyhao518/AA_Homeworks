require_relative './piece.rb'
require_relative './slideable.rb'

class Bishop < Piece
  include Slideable
#   def initialize(color, board, pos)
#     super
#   end

  def symbol
    '♝'.colorize(color)
  end

  protected

  def move_dirs
    diagonal_dirs
    # return the directions in which a bishop can move
    # a bishop can move diagonally
  end
end