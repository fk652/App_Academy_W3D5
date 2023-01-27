require_relative "poly_tree_node"

class KnightPathFinder

  def self.valid_moves(position) #[1,2]
    x, y = position
    pos_1 = [(x+2), (y+1)] 
    pos_2 = [(x+2), (y-1)] 
    pos_3 = [(x+1), (y+2)]
    pos_4 = [(x+1), (y-2)]
    pos_5 = [(x-1), (y+2)]
    pos_6 = [(x-1), (y-2)]
    pos_7 = [(x-2), (y+1)]
    pos_8 = [(x-2), (y-1)]
    possible_moves  = [pos_1, pos_2, pos_3, pos_4, pos_5, pos_6, pos_7, pos_8]
    possible_moves.select { |move| move[0] > 0 && move[0] < 7 && move[1] > 0 && move[1] < 7 }
  end

  def initialize(position)  # [1, 2]
    @root_node = PolyTreeNode.new(root_node)
    self.build_move_tree
    @considered_positions = [position]
  end

  def build_move_tree
    start_pos = @root_node
    queue = [start_pos]
    until queue.empty?
      curr_node = queue.shift
      moves = new_move_positions(curr_node.value)
      moves.each do |move| 
        child = PolyTreeNode.new(move)
        queue.push(child)
        curr_node.add_child(child)
      end
    end
  end

  def new_move_positions(pos)
    moves = KnightPathFinder.valid_moves(pos)
    moves = moves.select{|move| !@considered_positions.include?(move)}
    @considered_positions += moves
    moves 
  end
end

knight = KnightPathFinder([0,0])
