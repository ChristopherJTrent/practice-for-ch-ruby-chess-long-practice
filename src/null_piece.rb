require_relative "piece.rb"
require "singleton"
class NullPiece < Piece 
  #obtains behavior of singleton module
include Singleton
def initialize

end



end