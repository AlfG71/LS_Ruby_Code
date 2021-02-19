  SHORTHAND_MOVES = {'r' => 'rock', 
                     'p' => 'paper', 
                     's' => 'scissors', 
                     'l' => 'lizard', 
                     'sp' => 'spock'}

  def choice_translate(choice)
    SHORTHAND_MOVES.keys.include?(choice) ? SHORTHAND_MOVES[choice] : choice
  end

p choice_translate('p')






#   SHORTHAND_MOVES = {'r' => 'rock', 
#                      'p' => 'paper', 
#                      's' => 'scissors', 
#                      'l' => 'lizard', 
#                      'sp' => 'spock'}

# new_hash = Hash.new(0)

# p SHORTHAND_MOVES.include?('r')  
# p SHORTHAND_MOVES['r']  
# new_hash[SHORTHAND_MOVES['R'.downcase]] += 1
# p new_hash                 



# module Describable
#   def describe_shape
#     "I am a #{self.class} and have #{self.class::SIDES} sides."
#   end
# end

# class Shape
#   include Describable

#   def self.sides
#     self::SIDES
#   end
# end

# class Quadrilateral < Shape
#   SIDES = 4

#   # def sides
#   #   SIDES
#   # end
# end

# class Square < Quadrilateral; end

# p Square.sides # => 4
# p Square.new.sides # => 4
# p Square.new.describe_shape # => "I am a Square and have 4 sides."