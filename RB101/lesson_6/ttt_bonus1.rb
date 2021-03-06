# Improved "join"

# If we run the current game, we'll see the following prompt:

# => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, 9
# This is ok, but we'd like for this message to read a little better. We want to separate the last item with a "or", so that it reads:

# => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9
# Currently, we're using the Array#join method, which can only insert a delimiter between the array elements, and isn't smart enough to display a joining word for the last element.

# Write a method called joinor that will produce the following result:

# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
# Then, use this method in the TTT game when prompting the user to mark a square.

=begin 
  P
  -create a method that takes and array of integers as a parameter
  -the method will take that array and create a new array with the same elements separated by a string argument
  -it will also insert that string argument where denoted in the parameter

  E

  D

  A

  C
=end




require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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

def empty_squares(brd)
	brd.keys.select {|num| brd[num] == INITIAL_MARKER}  #returns an array of numbers indicating the options left to play 
end																										#this would be the places where there is still room to play and on the original hash have a value of ' '

def joinor(brd, punctuation = ', ', word = 'or')  #****START OF NEW METHOD FOR BONUS FEATURES*****
  brd[-1] = word + ' ' + brd[-1].to_s
  if brd.length <= 2 
    brd.join(' ')
  else  
    brd.join(punctuation)
    #binding.pry
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

def computer_places_piece!(brd)
	square = empty_squares(brd).sample
	brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
	!!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + #rows
                   [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + #columns
                   [[1, 5, 9], [3, 5, 7]]							 #diagonals 

  winning_lines.each do |line|
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
		prompt "#{detect_winner(board)} won!"
	else
		prompt "It's a tie!"
	end

	prompt "Play again? (y or n)"
	answer = gets.chomp
	break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing tic tac toe"
puts "Good-bye!"