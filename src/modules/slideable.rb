require_relative "moveable.rb"
#queens, bishops, rooks

module Slideable
    #a slideable piece is moveable
  extend Moveable
    STRAIGHT_DIRECTS = [[0,1],[1,0],[0,-1],[-1,0]]
    DIAGONAL_DIRECTS = [[-1, 1], [1,1],[1,-1],[-1,-1]]

    def moves
      #capturing all moves
      move_directs.inject([]){|acc, ele| acc << grow_unblocked_moves(ele)}
    end

    def pos
        raise NotImplementedError
    end

    def board
        raise NotImplementedError
    end

    def move_directs
        raise NotImplementedError
    end

    private
    def grow_unblocked_moves(direction)
      #starting in str pos, moving until we need to stop
        row, col = pos
        drow, dcol = direction
        results = []
        #while inside board 
        while row.between?(0,8) && col.between?(0,8)
          #if opposing piece, << array and return
          break results << [row, col] if board[[row, col]].color != color
          # return if own piece 
          break if board[[row, col]].color == color
          results << [row, col]
        end
    end
end