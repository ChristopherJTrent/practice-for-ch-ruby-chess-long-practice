require_relative "../modules/moveable.rb"
require_relative "../piece.rb"

class Pawn < Piece
include Moveable
#above line means a pawn is moveable but is not steppable or slideable
    WHITE_SYMBOL = '♙'
    BLACK_SYMBOL = '♟︎'
    def initialize(*var_args)
        super(*var_args)
        has_moved = false
    end
    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end
    def empty?
        false
    end
    
    def has_moved?
        has_moved
    end

    def moves
      dir = (color == :black ? 1 : -1)
      result = [[pos[0] + 1 * dir, pos[1]]]
      result << [pos[0] - 2 * dir, pos[1]] unless has_moved?
      result
    end

end 