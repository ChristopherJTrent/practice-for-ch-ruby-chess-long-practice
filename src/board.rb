require_relative "null_piece"
require "byebug"

class Board
    def initialize

        #grid of empty squares 
        @null_piece = NullPiece.instance
        @rows = Array.new(8) {Array.new(8, @null_piece)}
        @rows[0][0] = Piece.new(:white, self, [0, 0])
    end
    def move_piece(start_pos, end_pos)
      start_x, start_y = *start_pos
      target_x, target_y = *end_pos
      debugger
      raise "error: No piece found!!!" if @rows[start_x][start_y] == @null_piece
      raise "error: Target Occupied" unless @rows[target_x][target_y] == @null_piece
        current_piece = @rows[start_x][start_y]
        current_piece.pos = end_pos
        @rows[start_x][start_y] = @null_piece
        @rows[target_x][target_y] = current_piece
    end
    
    def [](pos)
      @rows[pos[0]][pos[1]]  
    end
  end 