require_relative 'rps_test'
require_relative 'rps_game'
require_relative 'rps_rules'
  
  # Public: #driver
  # Creates the player's names, determines how many games they play to, starts the game loop, & states the winner.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # The outcome of each round and who the overall winner is.
  #
  # State Changes:
  # Sets @player1 and @player2's names.
  
  def driver
    start = Game.new("Derek", "Hilary")
    start.play_to_n # couldn't figure out a way to not have to call this in the driver method.
    start.play
  end

driver
 
