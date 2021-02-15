def is_odd?(num)
  return false if num == 0
  if num % 2 == 1
    true
  else 
    false
  end  
end

puts is_odd?(2)   == false
puts is_odd?(5)   == true
puts is_odd?(-17) == true
puts is_odd?(-8)  == false
puts is_odd?(0)   == false
puts is_odd?(7)   == true

=begin
		# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

	Problem:
  -Create a method that takes one argument
  -The argument is an integer and can be any type of valid Integer (positive, negative or zero)
  -It will return a boolean value
  -The boolean True if the argument's absolute value is odd
  -The absolute value is a positive number that is not zero
  -False otherwise
  -May not use the odd? or even? methods

  Example:

    puts is_odd?(2)    # => false
    puts is_odd?(5)    # => true
    puts is_odd?(-17)  # => true
    puts is_odd?(-8)   # => false
    puts is_odd?(0)    # => false
    puts is_odd?(7)    # => true   

  Data Structures:
  Input  = Integer
  Output = Boolean

  Algorithm
  1) create a method definition with one parameter is_odd?(num)
  2) check if the number is zero
    a)return false if zero
  3) check if the number is negative
    a)convert to a positive number if negative
  4) check to see if the number is odd
    a) return true if an odd number
    b) return false otherwise

=end