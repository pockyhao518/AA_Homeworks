require_relative './piece.rb'
require_relative './slideable.rb'

class Rook < Piece
  include Slideable

  def symbol
    '♜'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a rook can move
    # a rook can move horizontally (across rows and columns)
    horizontal_dirs
  end
end