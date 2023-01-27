class PolyTreeNode

       #   a
      # b   c
    # d e    f

  attr_reader :value, :parent, :children

  def initialize(value)
    @value = value 
    @parent = nil   #parent is an attribute that refers to a node
    @children = []  #refers to a bunch 
  end

  def value
    @value
  end 


  def parent=(new_parent)
      if new_parent != nil
        if @parent = nil 
          @parent.children.delete(self)     
        # end 
        @parent = new_parent
        new_parent.children << self 
      elsif 
        @parent.children.delete(self)
        @parent = nil
      end     
  end
end