require 'pry'
require_relative 'rps_test'

class Game
  attr_accessor :num, :winning_moves
  
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @num = num
    @winning_moves = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}
  end
  
  def play_to_n
    puts "What number would you like to play to?: "
    @num = gets.chomp.to_i
    @num #what I want to return
  end
  
  def player1_moves
    puts "#{@player1.name} chooses: #{@player1.player1_move}"
  end

  def player2_moves
    puts "#{@player2.name} chooses: #{@player2.player2_move}"
  end
  
  def best_of
    #@best_of_n = (@num / 2.to_f).ceil
    #until @player1.score == @num || @player2.score == @num do
    until @player1.score >= @num || @player2.score >= @num do
      player1_moves
      player2_moves

      if @player1.player1_move == "rock" && @player2.player2_move == "rock" || @player1.player1_move == "paper" && @player2.player2_move == "paper" || @player1.player1_move == "scissors" && @player2.player2_move == "scissors"
        puts "Tie!"
        elsif @player1.player1_move == "rock" && @player2.player2_move == "scissors" || @player1.player1_move == "paper" && @player2.player2_move == "rock" || @player1.player1_move == "scissors" && @player2.player2_move == "paper"
        @player1.player1_win
        puts "#{@player1.name} wins! The score is #{@player1.name} - #{@player1.score} #{@player2.name} - #{@player2.score}"
      else 
        @player2.player2_win
        puts "#{@player2.name} wins! The score is #{@player1.name} - #{@player1.score} #{@player2.name} - #{@player2.score}"
      end
    end
  end

  def winner 
    if @player1.score == @num
      puts "#{@player1.name} is the WINNER!"
    elsif @player2.score == @num
      puts "#{@player2.name} is the WINNER!"
    end
  end
end


binding.pry





