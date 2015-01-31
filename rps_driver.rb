require_relative 'rps_test'
require_relative 'rps_game'

class Driver
  
  def lets_play
    return Game.play_game("Derek", "Hilary")
    return Game.nth_game
    return Game.best_of
    return Game.winner
  end
  
end

new_game = Driver.new