# Implementing Computer personalities

# We have a list of robot names for our Computer class, but other than the name, there's really nothing different about each of them. It'd be interesting to explore how to build different personalities for each robot. For example, R2D2 can always choose "rock". Or, "Hal" can have a very high tendency to choose "scissors", and rarely "rock", but never "paper". You can come up with the rules or personalities for each robot. How would you approach a feature like this?

class Move
  VALUES = %w(rock paper scissors lizard spock)

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def >(other_move)
    beats.include?(other_move)
  end

  def to_s
    @value
  end
end

class Scissors < Move
  def beats
    ['lizard', 'paper']
  end
end

class Rock < Move
  def beats
    ['lizard', 'scissors']
  end
end

class Paper < Move
  def beats
    ['rock', 'spock']
  end
end

class Lizard < Move
  def beats
    ['spock', 'paper']
  end
end

class Spock < Move
  def beats
    ['rock', 'scissors']
  end
end

class Player
  attr_accessor :move, :name, :score, :moves

  def initialize
    @score = 0            # Tracking score for Human AND Computer
    set_name
    @moves = Hash.new(0)  # Tracking move history
  end

  def increase_score      # Increases score on each play
    self.score += 1
  end

  def winning_score?      # Checks to see if any of the players score has reached 5 wins
    self.score == 5
  end

  def clear_score
    self.score = 0        # Resets the score back to 0 once the game ends
  end

  def clear_moves
    self.moves = Hash.new(0)
  end

  def player_moves(player_move) # Increment value of chosen move to display in move_history
    moves[player_move] += 1 
  end

  def move_history               # display move history
    puts "Moves so far for #{self.name}:"
    moves.each_pair do |move, move_total|
    puts "#{move} = #{move_total}"
    end
    p                     # sets return value of the method to avoid return value of each_pair
  end

  def get_move(choice)
    case choice
    when 'rock' 
      then Rock.new(choice)
    when 'paper' 
      then Paper.new(choice)
    when 'scissors' 
      then Scissors.new(choice)
    when 'lizard' 
      then Lizard.new(choice)
    when 'spock' 
      then Spock.new(choice)
    end    
  end
end

class Human < Player
  def set_name
    system('clear')
    n = ''
    loop do
      puts "Hello there..."
      puts "What's your name? (no spaces please)"
      n = gets.chomp
      break if n =~ /^[a-z]+$/i
      puts "Sorry, please try again without spaces..."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts
      puts "Please choose rock, paper, scissors, lizard or spock:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = get_move(choice)
    self.player_moves(choice)          #add move to the moves hash
  end
end

class Computer < Player
  def set_name
    self.name = %w(R2D2 C3PO Wally BB4).sample
  end

  def choose
    self.move = get_move(Move::VALUES.sample)
    self.player_moves("#{move}")       # add move to the moves hash
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts
    center_text("Welcome to the Rock, Paper, Scissors, Lizard, Spock game!")
    puts
    center_text("The first one to 5 points wins the game.")
    center_text("----------------------------------------")
    center_text("You earn a point each time you win a round.")
    puts
    center_text("Good luck #{human.name}!")
  end

  def center_text(text)
    puts "#{text}".center(74)
  end

  def display_goodbye_message
    puts
    puts "Thanks for playing #{human.name}."  
    puts "Please come play again soon!"
    puts "Have a wonderful rest of your day!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move} and #{computer.name} chose #{computer.move}."
    puts
    round_winner
    puts "#{human.move_history}"           # move history updated each round for human                  
    puts "#{computer.move_history}"         # move history updated each round for computer
  end

  def round_winner
    if human.move > computer.move.value
      puts "#{human.name} won this round!"
      human.increase_score                 # increment score value on each win
    elsif computer.move > human.move.value
      puts "#{computer.name} won this round!"
      computer.increase_score              # increment score value on each win
    else
      puts "It's a tie!"
    end
    puts
  end

  def display_winner
    if human.winning_score?
      puts
      puts "Congrats #{human.name}, you won the game!"
      puts "Quick happy celebratory dance... :-)"
      puts
    else computer.winning_score?
      puts
      puts "Aww... #{computer.name} won the game! :_("
      puts "You did your best though..."
      puts
    end

    puts "Final score was #{human.name} #{human.score} and #{computer.name} #{computer.score}!" 

    human.clear_score
    computer.clear_score
    human.clear_moves
    computer.clear_moves
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if %w(y n).include?(answer.downcase)
      puts "Sorry, must be y or n."
    end

    return true if answer.downcase == 'y'
    return false if answer.downcase == 'n'
  end

  def play
    system('clear')
    display_welcome_message
    loop do
        loop do
          human.choose
          computer.choose
          display_moves
          break if human.winning_score? || computer.winning_score?
        end
      display_winner  
      break if play_again? == false
    end           
    display_goodbye_message
  end
end

RPSGame.new.play
