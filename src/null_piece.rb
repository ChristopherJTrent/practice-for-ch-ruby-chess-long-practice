require_relative "piece.rb"
require "singleton"
class NullPiece < Piece 
    #obtains behavior of singleton module
    include Singleton
    def initialize

    end

    def symbol
        ' '
    end

    def empty?
        true
    end
end