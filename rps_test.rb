#require 'pry'
# Class: Player
#
# Initializes the players names and sets their starting score to zero.
#
# Attributes:
# @name   - String: the player's name.
# @score  - Integer: Sets initial score to zero.

class Player 
  
  attr_accessor :name, :score, :move
    
  def initialize(name, score=0)
    @name = name
    @score = score
    @move = ["rock", "paper", "scissors"]
  end 
  
  def player1_move
    @move.sample
  end
  
  def player2_move
    @move.sample
  end

  def player1_win
    @score += 1
  end
  
  def player2_win
    @score += 1
  end
  
end

# Public: #game
# Takes two arguments which create new Player objects.
# Stores all the possible moves in an array.
# Asks user the number of games they would like to play to the best of, which must be odd.
# Sets each player's choice to a random element in the moves array.
# Using a loop, it determines which player won each round, outputs the player's score 
# total, and ends when a player has won the required number of games.
#
# Return:
# String: Showing each round won, which lists each players moves and point totals.
#
# State Changes:
# Sets player1 and player2 to the name's of the players.
#binding.pry

