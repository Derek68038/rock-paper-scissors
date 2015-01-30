class Player 
  
  attr_accessor :name, :score
    
  def initialize(name, score=0)
    @name = name
    @score = score.to_i
  end 
  
end

def game(p1, p2)
  player1 = Player.new(p1)
  player2 = Player.new(p2)
  moves = ["rock", "paper", "scissors"] 

  puts "What number would you like to play to the best of? (number must be odd)?: "
  num = gets.chomp.to_i
    until num.even? == false
      puts "Your number must be odd. Try Again."
      num = gets.chomp.to_i
    end
  
  best_of = num / 2.to_f

  until player1.score == "#{best_of}".to_f.ceil || player2.score == "#{best_of}".to_f.ceil do
    x = moves.sample
    y = moves.sample
    puts "#{player1.name} chooses: #{x}"
    puts "#{player2.name} chooses: #{y}"
      
    if "#{x}" == "#{y}"
      puts "Tie!"
    elsif "#{x}" == "rock" && "#{y}" == "scissors" || "#{x}" == "paper" && "#{y}" == "rock" || "#{x}" == "scissors" && "#{y}" == "paper"
      player1.score += 1
      puts "#{player1.name} wins! The score is #{player1.name} - #{player1.score} #{player2.name} - #{player2.score}"
    else 
      player2.score += 1
      puts "#{player2.name} wins! The score is #{player1.name} - #{player1.score} #{player2.name} - #{player2.score}"
    end
  end
puts "WE HAVE A WINNER!"
end

game("Derek", "Hilary")
