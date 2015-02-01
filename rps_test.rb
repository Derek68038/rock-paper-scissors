# Class: Player
#
# Gets our player's names, set their scores to zero, provides the
# player's moves, and increases their score after a win.
#
# Attributes:
# @name   - String: the player's name.
# @score  - Integer: Sets initial score to zero.
# @move   - Array: an array of possible game moves.
#
# Public Methods:
# #p1_moves
# #p2_moves
# #p1_win
# #p2_win

class Player 
  
  attr_accessor :name, :score, :move
    
  def initialize(name, score=0)
    @name = name
    @score = score
    @move = ["rock", "paper", "scissors"]
  end 
  
  def p1_moves
    @move.sample
  end
  
  def p2_moves
    @move.sample
  end
  
  def p1_win
    @score += 1
  end

  def p2_win
    @score += 1
  end

end



