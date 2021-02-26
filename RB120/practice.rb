  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], # Horizontal
                   [1, 4, 7], [2, 5, 8], [3, 6, 9], # Vertical
                   [1, 5, 9], [3, 5, 7]]

hsh = Hash.new(0)

(1..9).each do |num|
  hsh[num] = ' '
end             

p hsh      

hsh[1], hsh[2] = 'X', 'X'
p hsh
a = nil
  def winning_marker 
    WINNING_LINES.each do |line| #line is an array representing a winning line
      # binding.pry

      if @squares.values_at(*line).all? {|mark|} mark == HUMAN_MARKER}
        return TTTGame::HUMAN_MARKER
      elsif @squares.values_at(*line).all? {|mark|} mark == COMPUTER_MARKER}
        return TTTGame::COMPUTER_MARKER
      end
    end
    nil
  end
p a