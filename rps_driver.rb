require_relative 'rps_game'
  
  def driver
    start = Game.new("Derek", "Hilary")
    start.play_to_n
    start.game_loop
    start.winner
  end
 puts driver 

