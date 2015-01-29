class Player 
    attr_accessor :name, :score
    
    def initialize(name, score)
        @name = name
        @score = score.to_i
    end
   
    def scoreboard
       "#{score}".to_i + 1
    end
end

player1 = Player.new("Derek", 0)
player2 = Player.new("Hilary", 0)

moves = ["rock", "paper", "scissors"] 

puts "What do you want to play to the best to?"
n = gets.chomp

until player1.score == "#{n}".to_i || player2.score == "#{n}".to_i do
    x = moves.sample
    y = moves.sample
    puts "#{player1.name} chooses: #{x}"
    puts "#{player2.name} chooses: #{y}"
    if "#{x}" == "#{y}"
        puts "Tie!"
    elsif "#{x}" == "rock" && "#{y}" == "scissors" || "#{x}" == "paper" && "#{y}" == "rock" || "#{x}" == "scissors" && "#{y}" == "paper"
        player1.score = player1.scoreboard
        puts "#{player1.name} wins! The score is #{player1.name} - #{player1.score} #{player2.name} - #{player2.score}"
    else 
        player2.score = player2.scoreboard
        puts "#{player2.name} wins! The score is #{player1.name} - #{player1.score} #{player2.name} - #{player2.score}"
    end
end

puts "WE HAVE A WINNER!"