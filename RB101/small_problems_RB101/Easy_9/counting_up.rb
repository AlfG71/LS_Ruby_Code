# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

=begin

Problem
   
  -create a method that takes an integer argument
  -return all the integers from 1 up to the original integer argument
  -assume the argument is always more than 0 

Examples:

  -sequence(5) == [1, 2, 3, 4, 5]
  -sequence(3) == [1, 2, 3]
  -sequence(1) == [1]

Data Structure

  Input  = integer
  Output = array

Algorithm

  1) Create a method with a number argument
       -sequence(int)

  2) Create an empty array to collect the result
       array_of_numbers = []

  3) Count up from one to int
      -append the numbers in sequence into array_of_numbers

  4) Return array_of_numbers

=end

def sequence(int)
  array_of_numbers = []

  1.upto(int) {|num| array_of_numbers << num}
  
  array_of_numbers
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]