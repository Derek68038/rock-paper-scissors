# Class: Game
#
# Runs the entire game by asking the user to what number they want to play to, stating what the player's choices 
# are, determing who won based on their choices, and increasing the winner's score.
#
# Attributes:
# @player1      - String: player one's name.
# @player2      - String: player two's name.
# @num_of_games - Integer: The game plays until the first player reaches this number.
# @p1_game_move - String: player one's move.
# @p2_game_move - String: player two's move.
#
# Public Methods:
# #play_to_n
# #players_choose
# #determine_winner
# #game_loop
# #winner
# #format

class Game
  
  attr_accessor :num_of_games, :p1_game_move, :p2_game_move
  
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @num_of_games = num_of_games
    @p1_game_move = p1_game_move
    @p2_game_move = p2_game_move
  end
  
  # Public: #play_to_n
  # Asks what the players want to play to. Must be an integer greater than zero.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # @num_of_games: the number the players play to.
  #
  # State Changes:
  # Sets @num_of_games to an integer.
  
  def play_to_n
    #puts "Prepare to battle your opponent! Your weapons: A rock, a piece of paper, and a  pair of scissors. The  rock will crush the scissors, the paper will smother the rock, and the scissors will cut the paper to shreds. The first player to win the following number of games wins the battle. What number would you like to play  to?: "
    puts "What number would you like to play to?: "
    @num_of_games = gets.chomp.to_i
    until @num_of_games > 0 && @num_of_games.class == Fixnum
      puts "Your answer was not recognized, please try again."
      @num_of_games = gets.chomp.to_i
    @num_of_games
  end
  
  # Public: #players_choose
  # Sets each player's move to a unique variable then prints what each player chose.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # Prints two sentences stating what move each player chose.
  #
  # State Changes:
  # Sets @p1_game_move and @p2_game_move.
  
  def players_choose
    @p1_game_move = @player1.p1_moves
    @p2_game_move = @player2.p2_moves
    puts "#{@player1.name} chooses: #{@p1_game_move}\n" + "#{@player2.name} chooses: #{@p2_game_move}"
  end

  # Public: #determine_winner
  # Determines which player won based on each round's moves.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # Prints out tie, or if there was not a tie, which player won and what the score is.
  #
  # State Changes:
  # None.
    
  def determine_winner
    players_choose
    if @p1_game_move == @p2_game_move
      puts "Tie!"
      format
    elsif @p1_game_move == "rock" && @p2_game_move == "scissors" || @p1_game_move == "paper" && @p2_game_move == "rock" || @p1_game_move == "scissors" && @p2_game_move == "paper"
      @player1.p1_win
      puts "#{@player1.name} wins!\n" "The score is:  #{@player1.name} - #{@player1.score}\t #{@player2.name} - #{@player2.score}"
      format
    else
      @player2.p2_win
      puts "#{@player2.name} wins!\n" "The score is:  #{@player1.name} - #{@player1.score}\t #{@player2.name} - #{@player2.score}"
      format
    end
  end

  # Public: #game_loop
  # Continues the game each round until a player has won the stated number of games.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # The determine_winner method
  #
  # State Changes:
  # None.
  
  def game_loop
    until @player1.score >= @num_of_games || @player2.score >= @num_of_games do
      determine_winner
      #@rules.determine_winner
    end
  end
  
  # Public: #play
  # Initiates the game loop and prints who the winner is once the game is over.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # A puts statement which states who the overall winner is.
  #
  # State Changes:
  # None.
  
  def play 
    game_loop
    if @player1.score >= @num_of_games
      puts "#{@player1.name} is the WINNER!"
    elsif @player2.score >= @num_of_games
      puts "#{@player2.name} is the WINNER!"
    end
  end
  
  # Public: #format
  # Separates each round with a line of dashes.
  #
  # Parameters:
  # None.
  #
  # Returns:
  # Sixty dashes.
  #
  # State Changes:
  # None.
  
  def format
    puts "-" * 60
  end

end
end



