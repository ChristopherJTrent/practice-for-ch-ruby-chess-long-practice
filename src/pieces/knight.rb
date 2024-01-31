require_relative "../piece.rb"
require_relative "../modules/steppable.rb"

class Knight < Piece
    include Steppable
    WHITE_SYMBOL = '♘'
    BLACK_SYMBOL = '♞'
    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end
    def move_directs
        KNIGHT_DIRECTS
    end
    def empty?
        false
    end
end