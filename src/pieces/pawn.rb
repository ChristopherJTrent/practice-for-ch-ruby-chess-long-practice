require_relative "../piece.rb"

class Pawn < Piece
    WHITE_SYMBOL = '♙'
    BLACK_SYMBOL = '♟︎'
    def initialize(*var_args)
        super(var_args)
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
end 