require_relative 'rps_game'
  
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
    start.play_to_n
    start.game_loop
    start.winner
  end
 puts driver 

