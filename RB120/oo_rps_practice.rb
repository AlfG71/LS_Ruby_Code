# Implementing Computer personalities

# We have a list of robot names for our Computer class, but other than the name, there's really nothing different about each of them. It'd be interesting to explore how to build different personalities for each robot. For example, R2D2 can always choose "rock". Or, "Hal" can have a very high tendency to choose "scissors", and rarely "rock", but never "paper". You can come up with the rules or personalities for each robot. How would you approach a feature like this?

class Move
  VALUES = %w(rock paper scissors lizard spock)

  def >(other_move)
    winning_combo.include?(other_move)
  end

  def to_s
    "#{name}"
  end
end

class Scissors < Move
  attr_reader :name, :winning_combo
  
  def initialize
    @name = "scissors"
    @winning_combo = (['lizard', 'paper'])
  end
end

class Rock < Move
  attr_reader :name, :winning_combo

  def initialize
    @name = "rock"
    @winning_combo = (['lizard', 'scissors'])
  end
end

class Paper < Move
  attr_reader :name, :winning_combo

  def initialize
    @name = "paper"
    @winning_combo = (['rock', 'spock'])
  end
end

class Lizard < Move
  attr_reader :name, :winning_combo

  def initialize
    @name = "lizard"
    @winning_combo = (['spock', 'paper'])
  end
end

class Spock < Move
  attr_reader :name, :winning_combo

  def initialize
    @name = "spock"
    @winning_combo = (['rock', 'scissors'])
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

  def player_moves        # Increment value of chosen move to display in move_history
    moves[move.to_s] += 1 
  end

  def move_history               # display move history
    puts "Moves so far for #{name}:"
    moves.each_pair do |move, move_total|
      puts "#{move} = #{move_total}"
    end
    p          # sets return value of the method to avoid return value of each_pair
  end

  def get_move(choice)
    [Rock.new, Paper.new, Scissors.new, Lizard.new, Spock.new].select do |object|
      choice == object.name
    end[0]
  end
  
  def to_s
    "#{name}"
  end
end

class Human < Player
  def set_name
    system('clear')
    n = nil
    loop do
      puts "Hello there..."
      puts "What's your name?"
      n = gets.chomp.squeeze
      break unless n.empty? || n.match?(/[^a-z]/i)
      puts "Sorry, must enter a name..."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard or spock:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = get_move(choice)
    player_moves                 # add move to the moves hash
  end
end

class Computer < Player
  def set_name
    self.name = %w(R2D2 C3PO Wally).sample
  end

  def robot_tendencies
    case name 
    when 'R2D2' then %w(rock paper scissors).sample
    when 'C3PO' then Move::VALUES.sample
    when 'Wally' then 'lizard'
    end
  end

  def choose
    self.move = robot_tendencies #get_move(Move::VALUES.sample)
    player_moves  # add move to the moves hash
  end
end

# class R2D2 < Computer 
#   attr_reader :choice

#   def initialize
#     @name = "R2D2"
#     @choice = %w(rock paper scissors).sample 
#   end
# end

# class C3PO < Computer
#   attr_reader :choice

#   def initialize
#     @name = 'C3PO'
#     @choice = Move::VALUES.sample
#   end
# end

# class Wally < Computer
#   attr_reader :choice

#   def initialize
#     @name = 'Wally'
#     @choice = 'lizard'
#   end
# end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts
    center_text("Welcome to the Rock, Paper, Scissors, Lizard, Spock game!\n\n")
    center_text("The first one to 5 points wins the game.")
    center_text("----------------------------------------")
    center_text("You earn a point each time you win a round.\n\n")
    center_text("Good luck #{human}!")
  end

  def center_text(text)
    puts "#{text}".center(74)
  end

  def display_goodbye_message
    puts
    puts "Thanks for playing #{human}.\n\n"
    puts "Please come play again soon!\n\n"
    puts "And have a wonderful rest of your day!\n\n"
  end

  def display_moves
    puts "#{human} chose #{human.move} and #{computer} chose #{computer.move}.\n"
    round_winner
    puts "#{human.move_history}"           # move history updated each round for human                  
    puts "#{computer.move_history}"         # move history updated each round for computer
  end

  def round_winner
    if human.move > computer.move
      puts "#{human} won this round!"
      human.increase_score                 # increment score value on each win
    elsif computer.move > human.move
      puts "#{computer} won this round!"
      computer.increase_score              # increment score value on each win
    else
      puts "It's a tie!"
    end
    puts
  end

  def display_winner
    if human.winning_score?
      puts "Congrats #{human}, you won the game!\n\n"
      puts "Quick happy celebratory dance... :-)\n\n"
      sleep 1
    else computer.winning_score?
      puts "Aww... #{computer} won the game! :_("
      puts "You did your best though...\n\n"
    end

    puts "Final score was #{human} #{human.score} and #{computer} #{computer.score}!\n\n"

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

    answer.downcase == 'y' ? true : false
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
