
require_relative 'rps_game'

class Rules
 
  def determine_winner
    @players_choose
    if @p1_game_move == @p2_game_move
      puts "Tie!"
      @format
    elsif @p1_game_move == "rock" && @p2_game_move == "scissors" || @p1_game_move == "paper" && @p2_game_move == "rock" || @p1_game_move == "scissors" && @p2_game_move == "paper"
      @player1.p1_win
      puts "#{@player1.name} wins!\n" "The score is:  #{@player1.name} - #{@player1.score}\t #{@player2.name} - #{@player2.score}"
      @format
    else 
      @player2.p2_win
      puts "#{@player2.name} wins!\n" "The score is:  #{@player1.name} - #{@player1.score}\t #{@player2.name} - #{@player2.score}"
      @format
    end
  end

end  
