# Odd

# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# Examples:

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# Casual pseudo code:

# -Write a method which takes one value
# -The value for the method is an integer
# -Method returns true if the integer value is odd
# -Assuming the value of the integer is valid

# Formal pseudo code:
# START
# -DEF a method
# -NAME the method
# -END method
# -ADD an argument of an integer to the method
# -DEF parameters of the method
# -ADD conditionals to the method
# -CALL the method

# def is_odd?(int)
# 	if int.abs%2 != 0
# 		true
# 	else
# 		false
# 	end
# end

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