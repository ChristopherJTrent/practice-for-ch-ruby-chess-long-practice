require_relative "../piece.rb"
require_relative "../modules/slideable.rb"

class Rook < Piece
    WHITE_SYMBOL = '♖'
    BLACK_SYMBOL = '♜'
    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end
end