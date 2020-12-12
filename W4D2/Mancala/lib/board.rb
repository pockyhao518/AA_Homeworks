class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    arr = (Array.new(6){[0]} + [[]] + Array.new(6){[0]} + [[]])
    arr.each_with_index do |ele, i|
      if ele == [0]
        arr[i] = Array.new(4){:stone}
      end
    end
    arr
  end

  def valid_move?(start_pos)
    if start_pos > 13 || start_pos < 0
      raise 'Invalid starting cup'
    elsif @cups[start_pos].empty?
      raise 'Starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)
    
    count = @cups[start_pos].count
    @cups[start_pos] = []
    if current_player_name == @name1
      until count == 0
        start_pos += 1
        if (start_pos % 14) != 13
          @cups[(start_pos % 14)] << :stone
          count -= 1
        end
      end
    else
      until count == 0
        start_pos += 1
        if (start_pos % 14) != 6
          @cups[(start_pos % 14)] << :stone
          count -= 1
        end
      end
    end  
    render
    next_turn(start_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if @cups[ending_cup_idx].nil?
      :switch
    elsif ending_cup_idx == 13 || ending_cup_idx == 6
      :prompt
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all?{ |ele| ele.empty?} || @cups[7..12].all?{ |ele| ele.empty?}
  end

  def winner
    return :draw if @cups[6].count == @cups[13].count
    (@cups[6].count > @cups[13].count)? @name1 : @name2
  end
end
