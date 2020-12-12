require_relative "PolyTree.rb"

class KnightPathFinder

    attr_reader :considered_positions, :pos, :root_node

    POSSIBLE_MOVES = [[1,2],[-1,2],[1,-2],[-1,-2],[2,1],[-2,1],[2,-1],[-2,-1]]
    def initialize(pos, considered_positions = [])   
        @pos = pos
        @root_node = PolyTreeNode.new(pos) 
        @considered_positions = considered_positions 
    end
    
    def self.valid_moves(pos)  
        row, col = pos
        new_move = []
        POSSIBLE_MOVES.each do |move_range|
            row_change, col_change = move_range
            row_new = row + row_change
            col_new = col + col_change
            if row_new.between?(0,7) && col_new.between?(0,7)
                new_move << [row_new, col_new]
            end
        end
        new_move
    end

    def new_move_positions(pos)
        @considered_positions << pos
        new_move = KnightPathFinder.valid_moves(pos)
        new_move.select{|position| !@considered_positions.include?(position)}
    end


    def build_move_tree  # list all moves from current move.
        # [0,0]
       queue = [@root_node]
       until queue.empty?
           pos = queue.first.value
           poss = self.new_move_positions(pos)
           poss.each do |ele| #[1,2] [2,1]
               new_node = PolyTreeNode.new(ele)
               queue[0].add_child(new_node)
               queue << new_node                                      
           end 
           queue.shift  
       end
   end

    def find_path(position)  
        self.build_move_tree
    end_node = @root_node.dfs(position)
    trace_path_back(end_node)
      .reverse
      .map(&:value)
    end

    def trace_path_back(end_node)
        nodes = []
    
        current_node = end_node
        until current_node.nil?
          nodes << current_node
          current_node = current_node.parent
        end
    
        nodes
      end

end 

kpf = KnightPathFinder.new([0, 0])
p kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
p kpf.find_path([3, 3]) # => [[0, 0], [2, 1], [3, 3]]
