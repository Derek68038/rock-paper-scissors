require 'pry'
require_relative 'rps_test'

class Game
  attr_accessor :num
  
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @num = num
  end
  
  # def play_game(player1, player2)
#     @player1 = Player.new(player1)
#     @player2 = Player.new(player2)
#     return player1, player2 # what I want to return
#   end
  
  def nth_game
    puts "What number would you like to play to the best of? (number must be odd)?: "
    @num = gets.chomp.to_i
    until num.even? == false
      puts "Your number must be odd. Try Again."
      @num = gets.chomp.to_i
    end
    @num #what I want to return
  end 
  
  def player1_moves
    puts "#{@player1} chooses: #{@move}"
  end

  def player2_moves
    puts "#{player2.name} chooses: #{player2_move}"
  end
  
  def best_of
    best_of = @num / 2.to_f
    until @player1.score == "#{best_of}".to_f.ceil || @player2.score == "#{best_of}".to_f.ceil do
      @player1.player1_move
      @player2.player2_move

      if @player1.player1_move == @player2.player2_move
        puts "Tie!"
      elsif player1_move == "rock" && player2_move == "scissors" || player1_move == "paper" && player2_move == "rock" || player1_move == "scissors" && player2_move == "paper"
        @player1.win
        puts "#{player1.name} wins! The score is #{player1.name} - #{player1.win} #{player2.name} - #{player2.win}"
      else 
        @player2.win
        puts "#{player2.name} wins! The score is #{player1.name} - #{player1.win} #{player2.name} - #{player2.win}"
      end
    end
  end

  def winner 
    if player1.score == best_of.to_f.ceil
      puts "#{player1.name} is the WINNER!"
    elsif player2.score == best_of.to_f.ceil
      puts "#{player2.name} is the WINNER!"
    end
  end
end


binding.pry





