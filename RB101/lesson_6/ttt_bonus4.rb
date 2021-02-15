# Computer AI: Offense

# The defensive minded AI is pretty cool, but it's still not performing as well as it could because if there are no impending threats, it will pick a square at random. We'd like to make a slight improvement on that. We're not going to add in any complicated algorithm (there's an extra bonus below on that), but all we want to do is piggy back on our find_at_risk_square from bonus #3 above and turn it into an attacking mechanism as well. The logic is simple: if the computer already has 2 in a row, then fill in the 3rd square, as opposed to moving at random.

SCOREBOARD = {'X' => 0, 'O' => 0}
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + #rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + #columns
                [[1, 5, 9], [3, 5, 7]]							 #diagonals 

def prompt(msg)
	puts "=> #{msg}"
end

def display_board(brd)
	system 'clear'
	puts "You're #{PLAYER_MARKER}.  Computer is #{COMPUTER_MARKER}"
	puts ""
	puts "     |     |"
	puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
	puts "     |     |"
	puts "-----+-----+-----"
	puts "     |     |"
	puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
	puts "     |     |"
	puts "-----+-----+-----"
	puts "     |     |"
	puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
	puts "     |     |"
	puts "" 
end

def initialize_board
	new_board = {}
	(1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def play_defence?(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def empty_squares(brd)
	brd.keys.select {|num| brd[num] == INITIAL_MARKER}  #returns an array of numbers indicating the options left to play 
end																										#this would be the places where there is still room to play and on the original hash have a value of ' '

def joinor(brd, punctuation = ', ', preposition = 'or')  #*START OF NEW METHOD FOR BONUS FEATURES*****
  brd[-1] = preposition + ' ' + brd[-1].to_s
  if brd.length <= 2 
    brd.join(' ')
  else  
    brd.join(punctuation)
  end
end

def player_places_piece!(brd)	
  square = ''
	loop do
		#binding.pry
	prompt "Choose a square (#{joinor(empty_squares(brd))}):"  #returns the options available spaced by a coma
	square = gets.chomp.to_i
	break if empty_squares(brd).include?(square)
		prompt "Sorry, that's not a valid choice."
	end

	brd[square] = PLAYER_MARKER
end

# def computer_places_piece!(brd)
# 	square = nil
  
#   WINNING_LINES.each do |line|
#     square = play_defence?(line, brd, PLAYER_MARKER)
#     break if square
#   end
	
#   if !square
#     WINNING_LINES.each do |line|
#       square = play_defence?(line, brd, COMPUTER_MARKER)
#       break if square
#     end
#   end

# 	if !square
# 		square = empty_squares(brd).sample
# 	end

# 	brd[square] = COMPUTER_MARKER
# end

def computer_places_piece!(brd)
  square = nil
  
  WINNING_LINES.each do |line|
    square = play_defence?(line, brd, PLAYER_MARKER)
    break if square
  end
  
  if !square
    WINNING_LINES.each do |line|
      square = play_defence?(line, brd, COMPUTER_MARKER)
      break if square
    end
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
	!!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER && 
    	 brd[line[1]] == PLAYER_MARKER && 
    	 brd[line[2]] == PLAYER_MARKER
    	 return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER && 
    	 brd[line[1]] == COMPUTER_MARKER && 
    	 brd[line[2]] == COMPUTER_MARKER
    	 return 'Computer'
    end
  end
  nil
end

def win_tracker(brd)
  SCOREBOARD['X'] += 1 if detect_winner(brd) == 'Player'
  SCOREBOARD['O'] += 1 if detect_winner(brd) == 'Computer' 
  nil
end

def declare_winner
  if SCOREBOARD['X'] == 5
    return 'Player has won 5 games and you rule!'
  elsif SCOREBOARD['O'] == 5
    return 'Computer has won 5 games and you suck!'
  else
    nil
  end
end

loop do
	board = initialize_board

	loop do
		display_board(board)

	  player_places_piece!(board)
	  break if someone_won?(board) || board_full?(board)

	  computer_places_piece!(board)
	  break if someone_won?(board) || board_full?(board)
	end

	display_board(board)

  if someone_won?(board)
    win_tracker(board)
		prompt "#{detect_winner(board)} won!"
	else
		prompt "It's a tie!"
	end
  
  break if declare_winner

	prompt "Play again? (y or n)"
	answer = gets.chomp
	break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing tic tac toe"
puts "Good-bye!"