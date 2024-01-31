require_relative "../piece.rb"
require_relative "../modules/slideable.rb"

class Bishop < Piece
    include Slideable
    WHITE_SYMBOL = '♗'
    BLACK_SYMBOL = '♝'
    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end
    def move_directs
        DIAGONAL_DIRECTS
    end
    def empty?
        false
    end
end