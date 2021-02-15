# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

=begin
Problem
  -Write a method that takes zero or a positive number and converts it into the string representation of the original number
  -May not use any of the standard conversion methods, do this the old fashioned way

Examples
  -integer_to_string(4321) == '4321'
  -integer_to_string(0) == '0'
  -integer_to_string(5000) == '5000'

Data
  Input  = integer
  Output = string

Algorithm
  -create a conversion table from number to string
  -take a number as an argument
  -evaluate that number into a string representation of that number
  -compare the digits in the number to the conversion table objects
  -print the string

Code 
=end

NUMBER_TO_STRING = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(int)
  int_arr = int.digits.reverse
  result = int_arr.map {|num| NUMBER_TO_STRING[num]}

  result.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'








# NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(int)
#   number_string = ''
#   number_array = int.digits.reverse # array of digits
  
#   number_array.each do |n|
#     number_string << NUMBERS[n] #=> index within the NUMBERS constant
#   end
#   number_string
# end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'