require_relative './piece.rb'
require_relative './slideable.rb'
class Queen < Piece
  include Slideable
  

  def symbol
    '♛'.colorize(color)
  end

  protected

  def move_dirs
    horizontal_dirs + diagonal_dirs 
  #   # return the directions in which a queen can move
  #   # a queen can move horizontally (across rows and columns) and diagonally
  end
end