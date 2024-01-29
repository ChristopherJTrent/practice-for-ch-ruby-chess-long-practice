require_relative "moveable.rb"
#knights, kings
module Steppable
  #a steppable piece is moveable
  extend Moveable
    KING_DIRECTS = [[0,1],[1,0],[0,-1],[-1,0], [-1, 1], [1,1],[1,-1],[-1,-1]]
    KNIGHT_DIRECTS = [[2,1], [1,2], [-1,2], [-2,1], [-2,-1], [-1,-2], [1,-2], [2,-1]]
    def moves
      results = []
      move_directs.each do |vect|  
        direct = [vect[0] + pos[0], vect[1] + pos[1]]
        #unless this condition is true, proceed to next i in loop (next unless valid_pos?)
        next unless direct[0].between?(0,8) && direct[1].between?(0,8)
        #if we capture, proceed to next
        next if board[direct].color == color
          results << direct
      end
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
end