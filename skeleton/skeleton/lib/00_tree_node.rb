class PolyTreeNode
  node_1 = PolyTreeNode.new(root)
  node_2 = PolyTreeNode.new(child_1)
  node_3 = PolyTreeNode.new(child_2)

  def initialize
    new_node = PolyTreeNode.new(new_node)
    self.value = new_node
    new_node.parent = nil
    new_node.children = []
  end

  def value
    @value
  end 

  def parent=(parent_node)
    if parent_node != nil
      self.parent = parent_node
      parent_node.children << pare
    end
  end
end