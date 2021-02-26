# Rock, Paper, Scissors is a two-player game where each player chooses
# one of three possible moves: rock, paper, or scissors. The chosen moves
# will then be compared to see who wins, according to the following rules:

# - rock beats scissors
# - scissors beats paper
# - paper beats rock

# If the players chose the same move, then it's a tie.

#Nouns: Player, Move, Rules
#Verbs: Choose, Compare, 

# class Move
#   def initialize
#   	#something we will keep track of the choice
#   	#move objects? (rock, paper, scissors)?
#   end
# end

# class Rules
#   def initialize
#   	#not sure yet what the state of a rule object should be
#   end
# end
  
# #not sure yet where this goes
# def compare(move1, move2)
  
# end

class Player
  attr_accessor :move, :name

  def initialize
  	set_name
  end
end

class Human < Player
  def set_name
      n = ''
      loop do
        puts "What's your name?"
        n = gets.chomp
        break unless n.empty?
        puts "Sorry, must enter a name..."
      end
      self.name = n
  end

  def choose
    choice = nil
      loop do 
        puts "Please choose rock, paper or scissors:"
        choice = gets.chomp
        break if ['rock', 'paper', 'scissors'].include?(choice)
        puts "Sorry, invalid choice."
      end
    self.move = choice
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'C3PO', 'Wally'].sample
  end

  def choose
    self.move = ['rock', 'paper', 'scissors'].sample
  end
end

class RPSGame
	attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new	
  end

  def display_welcome_message
  	puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
  	puts "Thanks for playing Rock, Paper, Scissors.  Good bye!"
  end

  def display_winner
  	puts "#{human.name} chose #{human.move}."
  	puts "#{computer.name} chose #{computer.move}."

  	case human.move
  	when 'rock'
  	  puts "It's a tie!" if computer.move == 'rock'
  	  puts "#{human.name} won!" if computer.move == 'scissors'	
  	  puts "#{computer.name} won!" if computer.move == 'paper'
  	when 'paper'
  		puts "It's a tie!" if computer.move == 'paper'
  	  puts "#{human.name} won!" if computer.move == 'rock'	
  	  puts "#{computer.name} won!" if computer.move == 'scissors'
  	when 'scissors'
  		puts "It's a tie!" if computer.move == 'scissors'
  	  puts "#{human.name} won!" if computer.move == 'paper'	
  	  puts "#{computer.name} won!" if computer.move == 'rock'
  	end
  end

  def play_again?
  	answer = nil
  	loop do
	  	puts "Would you like to play again? (y/n)"
	  	answer = gets.chomp
	  	break if ['y', 'n'].include?(answer.downcase)
	  	puts "Sorry, must be y or n."
  	end

  	return true if answer == 'y'
  	return false
  end

  def play
  	display_welcome_message

  	loop do
	  	human.choose
	  	computer.choose
	    display_winner
	    break if play_again? == false
	  end
	  	display_goodbye_message
  end
end

RPSGame.new.play 