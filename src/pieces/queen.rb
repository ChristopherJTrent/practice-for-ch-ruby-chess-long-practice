require_relative "../piece.rb"
require_relative "../modules/slideable.rb"

class Queen < Piece
    include Slideable
    WHITE_SYMBOL = '♕'
    BLACK_SYMBOL = '♛'

    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end

    def move_directs
        STRAIGHT_DIRECTS + DIAGONAL_DIRECTS
    end
end 