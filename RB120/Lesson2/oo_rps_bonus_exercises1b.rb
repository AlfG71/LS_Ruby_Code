# Implementing score as its own class

class Move
  VALUES = %w(rock paper scissors)

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?)
  end

  def to_s
    @value
  end
end

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
      puts
      puts "Please choose rock, paper or scissors:"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = %w(R2D2 C3PO Wally BB4).sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class Score
  attr_accessor :score

  def initialize
    @score = 0
  end

  def increase_score    # Increases score on each play
    self.score += 1
  end

  def winning_score?    # Checks to see if any of the players score has reached 10 wins
    self.score == 5
  end
end

class RPSGame
  attr_accessor :human, :computer, :human_score, :computer_score

  def initialize
    @human = Human.new
    @human_score = Score.new     # new Score class object 
    @computer = Computer.new
    @computer_score = Score.new  # new Score class object
  end

  def display_welcome_message
    puts
    puts "Welcome to Rock, Paper, Scissors #{human.name}!"
    puts
    puts "The first one to 5 points wins the game."
    puts "----------------------------------------"
    puts "You earn a point each time you win a round..."
    puts
    puts "               Good luck!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors #{human.name}.  Come again!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def round_winner
    if human.move > computer.move
      puts "#{human.name} won this round!"
      human_score.increase_score                 # increment score value on each round win
    elsif human.move < computer.move
      puts "#{computer.name} won this round!"
      computer_score.increase_score              # increment score value on each round win
    else
      puts "It's a tie!"
    end
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
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_moves
      round_winner
      break if human_score.winning_score? || computer_score.winning_score?
    end
    puts "Final score was #{human.name} #{human_score.score} and #{computer.name} #{computer_score.score}!" #final score            
    display_goodbye_message
  end
end

RPSGame.new.play
