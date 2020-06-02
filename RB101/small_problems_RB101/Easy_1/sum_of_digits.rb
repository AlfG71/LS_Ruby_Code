def sum(positive_integer)
	positive_integer.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

=begin
  P  (understand the Problem)
    -Write a new method that takes one argument
    -The argument is a positive integer
    -The method returns the sum of all the digits in the argument

  E  (Examples)
    -puts sum(23) == 5
    -puts sum(496) == 19
    -puts sum(123_456_789) == 45
    -The tests above should print true.

  D  (Data structures)
    Input:
      -Integer
    Output:
      -Integer

  A  (Algorithm)
    -create a method called sum with a parameter called (positive_integer)
    -break down the integer into single integer components
    -add the single integer components together
    -return the sum of said components

  C  (Code)
     def sum(positive_integer)
     	positive_integer.digits.sum
     end


=end