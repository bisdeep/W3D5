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

    def add_child(node)
        node.parent = self
    end

    def remove_child(node)
        raise "Error" if node.parent.children.none? {|child| child == node }
        node.parent = nil
    end

    def dfs(value)
        return self if value == self.value
        self.children.each do |child|
            results = child.dfs(value)
            return results if (results != nil) 
        end
        nil
    end
    def bfs(value)
        queue = [self] 
        until queue.empty? 
            if queue.first.value == value 
                return queue.first
            else 
                queue += queue.first.children
                queue.shift 
            end 
        end
        nil 
    end
end