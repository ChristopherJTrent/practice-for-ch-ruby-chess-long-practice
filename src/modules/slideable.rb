#queens, bishops, rooks

module Slideable
    STRAIGHT_DIRECTS = [[0,1],[1,0],[0,-1],[-1,0]]
    DIAGONAL_DIRECTS = [[-1, 1], [1,1],[1,-1],[-1,-1]]

    def moves

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
        row, col = pos
        drow, dcol = direction
    end
end