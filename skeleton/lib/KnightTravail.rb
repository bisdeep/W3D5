
require relative "00_tree_node.rb"
class KnightPathFinder
    attr_reader :possible_positions, :considered_positions

    def self.valid_moves?(pos)
        #valid_moves = Array.new(8) { Array.new(2) }
        old_row = pos[0]
        old_index = pos[-1]
        #moving one index front/back we move two rows up/down
        #moving two index front/back we move one rows up/down
        moves = Hash.new{|h, k| h[k] = []}
        moves[old_row + 1] << old_index + 2, old_index - 2
        moves[old_row - 1] << old_index + 2, old_index - 2
        moves[old_row + 2] << old_index + 1, old_index - 1
        moves[old_row - 2] << old_index + 1, old_index - 1
    end #this will create a hash for possible moves based on given position

    def initialize(start_pos)
        @start_position = PolyTreeNode.new(start_pos) #this is our root node,
        #all possible positions from here, are children of this node^

        #every child is an instance of the node that has childen of the future 
        #positions from that point in time
        @possible_positions = @start_position.childen
        @considered_positions = [stat_pos]
        
    end


    

    def considered_moves

    end

end