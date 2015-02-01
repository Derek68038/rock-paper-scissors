require_relative 'rps_game'
require_relative 'rps_driver'
require 'minitest/autorun'

class RPSTest < Minitest::Test
  
  # def test_p1_moves_method_returns_string
  #   test = Player.new("player1")
  #   #assert_kind_of(String, test.p1_moves) #passes
  #   assert_kind_of(Integer, test.p1_moves) #fails
  # end
  #
  # def test_p2_moves_method_returns_string
  #   test = Player.new("player1")
  #   #assert_kind_of(String, test.p2_moves) #passes
  #   assert_kind_of(Integer, test.p2_moves) #fails
  # end
  #
  # def test_p1_win_method_returns_integer
  #   test = Player.new("player1")
  #   #assert_kind_of(String, test.p1_win) #fails
  #   assert_kind_of(Integer, test.p1_win) #passes
  # end
  #
  # def test_p2_win_method_returns_integer
  #   test = Player.new("player1")
  #   #assert_kind_of(String, test.p2_win) #fails
  #   assert_kind_of(Integer, test.p2_win) #passes
  # end
  #
  # def test_play_to_n_returns_integer
  #   test = Game.new("player1", "player2")
  #   test.play_to_n
  #   #assert_kind_of(Integer, @num_of_games) #fails
  #   assert_nil @num_of_games #pass
  # end
  
  # def test_players_choose_returns_string
#     test = Game.new("player1", "player2")
#     test.players_choose
#     assert_kind_of(Integer, "#{@p2_game_move}") #fails
#     #assert_kind_of(String, "#{@p2_game_move}") #pass
#   end

  def test_players_choose_returns_string
    test = Game.new("player1", "player2")
    test.determine_winner
    assert_kind_of(Integer, @player1.p1_win) #fails
    #assert_kind_of(String, "#{@p2_game_move}") #pass
  end








end

