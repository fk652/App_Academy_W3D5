       #   [1, 2]
      # [3, 3]   [3, 2]
    # d e    f

#     e = Node.new('e')
# f = Node.new('f') 
# g = Node.new('g') 
# b = Node.new('b', [d, e])
# c = Node.new('c', [f, g])
# a = Node.new('a', [b, c])


class PolyTreeNode



  attr_reader :value, :parent, :children

  def initialize(value)
    @value = value  #[1, 2]
    @parent = nil   #parent is an attribute that refers to a node
    @children = []  #refers to a bunch 
  end

  def value
    @value
  end 


  def parent=(new_parent)
    @parent.children.delete(self) if @parent != nil
    @parent = new_parent
    new_parent.children << self if new_parent != nil
  end

  def add_child(new_child)
    new_child.parent = self
  end

  def remove_child(old_child)
    raise "not a child of this node" if !children.include?(old_child)
    old_child.parent = nil
  end

  def dfs(target_value)
    return self if @value == target_value

    children.each do |child|
      result = child.dfs(target_value)
      return result if result != nil
    end
    nil
  end

  def bfs(target_value)
    queue = [] 
    queue.push(self) 
    until queue.empty?

      current_node = queue.shift
      return current_node if current_node.value == target_value

      current_node.children.each do |child|
        queue.push(child)
      end
    end
    nil
  end

  
end