require_relative "null_piece"
require "byebug"
require_relative "pieces/bishop"
require_relative "pieces/king"
require_relative "pieces/knight"
require_relative "pieces/pawn"
require_relative "pieces/queen"
require_relative "pieces/rook"

class Board
    def initialize
        #grid of empty squares 
        @null_piece = NullPiece.instance
        @rows = []
        #initializing 1st 2 rows by adding backfile and pawn row for black
        @rows += gen_start_pos(:black)
        #add 4 more rows, 8 wide of null pieces
        4.times {@rows << Array.new(8){NullPiece.instance}}
        @rows += gen_start_pos(:white)
      end
    def move_piece(start_pos, end_pos)
        start_x, start_y = *start_pos
        target_x, target_y = *end_pos
        debugger
        raise "error: No piece found!!!" if @rows[start_x][start_y].empty?
        raise "error: Target Occupied" unless @rows[target_x][target_y].empty?
        current_piece = @rows[start_x][start_y]
        current_piece.pos = end_pos
        @rows[start_x][start_y] = @null_piece
        @rows[target_x][target_y] = current_piece
    end
    
    def [](pos)
      @rows[pos[0]][pos[1]]  
    end
    def render
      @rows.each {|row| puts row.join(" ")}
    end

   private
    def gen_start_pos(color)
      pawns = []
      pawn_row = (color == :black ? 1 : 6) 
      #generates row of pawns 8 pawns wide
        8.times {|i| pawns << Pawn.new(color, self, [pawn_row, i])}
      #sorted other pieces
      back_file = []
      back_file_row = (color == :black ? 0 : 7) 
        back_file << Rook.new(color, self, [back_file_row, 0])
        back_file << Knight.new(color, self, [back_file_row, 1])
        back_file << Bishop.new(color, self, [back_file_row, 2])
        back_file << Queen.new(color, self, [back_file_row, 3])
        back_file << King.new(color, self, [back_file_row, 4])
        back_file << Bishop.new(color, self, [back_file_row, 5])
        back_file << Knight.new(color, self, [back_file_row, 6])
        back_file << Rook.new(color, self, [back_file_row, 7])
        color == :black ? [back_file, pawns] : [pawns, back_file] 
     end
    
    
  end 
  