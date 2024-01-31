require_relative "../piece.rb"
require_relative "../modules/steppable.rb"

class King < Piece
    WHITE_SYMBOL = '♔'
    BLACK_SYMBOL = '♚'
    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end
end