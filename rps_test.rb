require_relative 'rps_rules'
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
  
  attr_accessor :name, :score
    
  def initialize(name, score=0)
    @name = name
    @score = score
    @move = ["rock", "paper", "scissors"]
  end 
  
  # Public: #p1_moves
  # Selects player one's move.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # A random move out of the move array.
  #
  # State Changes:
  # None.
  
  def p1_moves
    @move.sample
  end
  
  # Public: #p2_moves
  # Selects player two's move.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # A random move out of the move array.
  #
  # State Changes:
  # None.
  
  def p2_moves
    @move.sample
  end
  
  # Public: #p1_win
  # Increases player one's score by one after a win.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # Score after adding one to itself.
  #
  # State Changes:
  # Increases score by one.
  
  def p1_win
    @score += 1
  end
  
  # Public: #p2_win
  # Increases player two's score by one after a win.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # Score after adding one to itself.
  #
  # State Changes:
  # Increases score by one.
  
  def p2_win
    @score += 1
  end
    
end



