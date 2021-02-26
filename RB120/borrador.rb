WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], # Horizontal
                   [1, 4, 7], [2, 5, 8], [3, 6, 9], # Vertical
                   [1, 5, 9], [3, 5, 7]] # Diagonal

board = {1 => 'X', 2 => 'X', 3 => ' ', 4 => 'X', 5 => 'X', 6 => ' ', 7 => ' ', 8 => ' ', 9 => 'X'}
lines = WINNING_LINES

def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

  def immediate_threat?
    square = nil
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, board)
      break if square
    end
    return square if square
    nil
  end

p immediate_threat?