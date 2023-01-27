require_relative "poly_tree_node"

class KnightPathFinder

  def self.valid_moves(position)
    possible_moves = [x, y]
    pos_1 = [(x+2), (y+1)]
    pos_2 = [(x+2), (y-1)]
    pos_3 = [(x+1), (y+2)]
    pos_4 = [(x+1), (y-2)]
    pos_5 = [(x-1), (y+2)]
    pos_6 = [(x-1), (y-2)]
    pos_7 = [(x-2), (y+1))]
    pos_8 = [(x-2), (y-1)]

  end

  def initialize(position)
    @root_node = position
    self.build_move_tree
    @considered_positions = [position]

  end

  def build_move_tree
    # root = PolyTreeNode.new(root_node)
  end



  def new_move_positions(pos)

    moves = KnightPathFinder.valid_moves(pos)
    moves = moves.select{|move| !@considered_positions.include?(move)}

    @considered_positions += moves

  end 

 

  
end