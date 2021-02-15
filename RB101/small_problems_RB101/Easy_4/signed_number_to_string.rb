# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

=begin
Problem
  -write a method that takes an integer and returns its string representation 
  -the string will also contain a plus or minus sign if according to the original integer value of positive or negative
  -if the integer is zero then it will not a have a sign before it on the string representation

Examples
  -signed_integer_to_string(4321) == '+4321'
  -signed_integer_to_string(-123) == '-123'
  -signed_integer_to_string(0) == '0'

Data Structures
  Input  = Integer
  Output = String 

Algorithm
  -create an object that contains all the information to convert an integer into a string
  -create a method to evaluate an integer
  -if the integer is a positive number, concatenate a plus sign with the string representation of the otriginal integer
  -if the integer is a negative number, concatenate a minus sign with the string representation of the original integer
  -if the integer is zero, return '0' without any sign before it 

Code
=end


NUMBER_TO_STRING = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}

def integer_to_string(int)
  int_arr = int.abs.digits.reverse
  result = int_arr.map {|num| NUMBER_TO_STRING[num]}

  result.join
end

def signed_integer_to_string(int)
  if int == 0
    integer_to_string(int)
  elsif int < 0 
      '-' + integer_to_string(int)
  else 
      '+' + integer_to_string(int)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
