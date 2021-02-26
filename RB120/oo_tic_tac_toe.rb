class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], # Horizontal
                   [1, 4, 7], [2, 5, 8], [3, 6, 9], # Vertical
                   [1, 5, 9], [3, 5, 7]] # Diagonal

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys # gives an array of keys yet to be marked
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full? # if the array is empty then it is full
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker # detects a winning marker or nil
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil # because of our use of the each method which returns the caller
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----------------"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----------------"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end

  def to_s
    @marker
  end
end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"

  @@current_turn = 0

  attr_reader :board, :human, :computer, :current_turn

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
  end

  private

  def turn_value_increased
    @@current_turn += 1
  end

  def reset_turn_count
    @@current_turn = 0
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe...  Goodbye!"
  end

  def display_board
    puts "You're a #{human.marker}, computer is #{computer.marker}"
    puts ""
    board.draw
    puts ""
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def human_moves
    puts "Choose a square between (#{board.unmarked_keys.join(', ')}):"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board.[]=(square, @human.marker)
  end

  def computer_moves
    board.[]=(board.unmarked_keys.sample, @computer.marker)
  end

  def current_player_moves
    if @@current_turn == 0 || @@current_turn.even?
      human_moves
    else
      computer_moves
    end
    turn_value_increased
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "You won!"
    when computer.marker
      puts "Computer won!"
    else
      puts "It's a tie!"
    end
    reset_turn_count
  end

  def play_again?
    answer = nil

    loop do
      puts "Would you like to play again? (y/n):"
      answer = gets.chomp.downcase
      break if %w(y n).include?(answer)
      puts "Sorry, must be y or n..."
    end

    answer == 'y'
  end

  def clear
    system 'clear'
  end

  def reset
    board.reset
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ''
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won? || board.full?

      clear_screen_and_display_board
    end
  end

  def main_game
    loop do
      display_board

      player_move
      display_result
      break unless play_again?
      reset
      display_play_again_message
    end
  end

  public

  def play
    clear
    display_welcome_message
    main_game
    display_goodbye_message
  end
end

# Start the game
game = TTTGame.new
game.play
