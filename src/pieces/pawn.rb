require_relative "../piece.rb"

class Pawn < Piece
    WHITE_SYMBOL = '♙'
    BLACK_SYMBOL = '♟︎'
    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end
end 