require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator) #:x
    
      return false if board.over? && board.won? == false
      return true if board.over? && board.winner != evaluator 
      return false if board.over? && board.winner == evaluator

    # call self.children to make array of possible moves
      possible_move = self.children  
    
      if evaluator == next_mover_mark
        # evaluator's turn
        return possible_move.all? do |node| 
            node.losing_node?(evaluator)
        end
      else
        # opponent turn
        return possible_move.any? do |node| 
          node.losing_node?(evaluator)
        end
      end
    end
 
  # [:o, nil, :o], 
  # [nil, nil, nil]  next_mover_mark :o
  # [nil, :x, :o]

  def winning_node?(evaluator)
    return false if board.over? && board.won? == false
    return false if board.over? && board.winner != evaluator 
    return true if board.over? && board.winner == evaluator
    possible_move = self.children
    if evaluator == next_mover_mark
      return possible_move.any? do |node|
        node.winning_node?(evaluator)
      end
    else
      return possible_move.all? do |node|
        node.winning_node?(evaluator)
      end
    end
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    current_pos = @prev_move_pos
    empty_pos = []
    next_mark = switch(next_mover_mark)
    @board.rows.each_with_index do |row, i|
      row.each_with_index do |col, j|
        new_board = @board.dup
        if new_board.rows[i][j].nil?
          new_board.rows[i][j] = next_mover_mark
          empty_pos << TicTacToeNode.new(new_board, next_mark , [i, j])
        
        end
      end
    end
    empty_pos
  end

  def switch(mark)
    if mark == :x
      mark = :o
    else
      mark = :x
    end
  end
end
