class Board
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        #FIXME: change this to be an instance of Null_Piece
        @null_piece = nil
    end
    def move_piece(start_pos, end_pos)
        raise "error" if @rows[*start_pos] == @null_piece
        raise "error" if @rows[*end_pos] != @null_piece
        current_piece = @rows[*start_pos]
        current_piece.pos = end_pos
        @rows[*start_pos] = @null_piece
        @rows[*end_pos] = current_piece
    end

end
  