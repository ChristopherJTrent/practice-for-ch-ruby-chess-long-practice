class Piece
    WHITE_SYMBOL = ' '
    BLACK_SYMBOL = ' '
    attr_accessor :pos
    attr_reader :color, :board
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos  
    end

    def symbol
        color == :black ? BLACK_SYMBOL : WHITE_SYMBOL
    end
end