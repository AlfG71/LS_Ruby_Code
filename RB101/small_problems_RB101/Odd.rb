def is_odd?(integer)
  if integer.abs % 2 == 1 
	  'true'
  else 
	  'false'
	end
end

    puts is_odd?(2)    # => false
    puts is_odd?(5)    # => true
    puts is_odd?(-17)  # => true
    puts is_odd?(-8)   # => false
    puts is_odd?(0)    # => false
    puts is_odd?(7)    # => true

=begin
		# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

	P (Understand the problem)
	  -Write a method that takes an integer as an argument
	  -The integer can be positive, negative or zero
	  -The method will return true if the integer's absolut value is odd
	  -It is assumed that the argument is a valid integer value
    -Can't use the methods ood? or even? in the solution

  E (Examples)
    -puts is_odd?(2)    # => false
    -puts is_odd?(5)    # => true
    -puts is_odd?(-17)  # => true
    -puts is_odd?(-8)   # => false
    -puts is_odd?(0)    # => false
    -puts is_odd?(7)    # => true

  D (Data structure)
    Input:
      -Method
      -Integers
      -Boolean

    Output:
      -Boolean

  A (Algorithm)
    -Write a method definition named is_odd? that takes an integer as an argument
    -The body of the method calculates the absolute value of the integer ie. (integer.abs)
    -If the absolut value of the integer is odd puts true
    -Puts false if the absolute value is negative or zero

  C (Code)
    def is_odd?(integer)
      integer.abs == odd number (integer % 2 == 1) 
    end

    puts is_odd(integer)
=end

#========================================================
#The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder instead of %. Note: before version 2.4, Ruby used the Numeric#remainder method instead.

def is_odd?(int)
	if int.remainder(2) != 0
		true
	else
		false
	end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)