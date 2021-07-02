class PolyTreeNode
    attr_reader :children, :parent, :value
 
    def initialize(value)
        @value = value
        @parent = nil 
        @children = [] 
    end
    def parent=(new_parent)
        parent.children.delete(self) if parent != nil 
        @parent = new_parent
        parent.children << self if new_parent != nil 
    end
    
end