# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

=begin
 	
 	Problem:
 -create a program that takes an integer argument, counts from 1 up to the integer and produces a value that is the subtraction between the sum of the total digit count squared minus the sum of all the squared digits

input : integer
output: integer

rules: 
-return 0 if the argument integer is == 1
-integer input is used for iteration

Questions:
-what are the first n positive integers? (1 up to the integer argument)

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
  => (1 + 2 + 3...10)**2 - (1**2 + 2**2 + 3**2...10**2)

sum_square_difference(1) == 0
=> return 0 if the argument is 1

sum_square_difference(100) == 25164150

possible approaches:
-Array to create a list of the numbers to be iterated over
-upto method?
-iterate over the Array two different times

Algorithm:

-create an array to store the resulting count from 1 up to the argument 'positive_integers'
-create a new object to store the result of all the numbers in 'positic_integers' squared 'squared_numbers'
-create a new object to store the value of the sum of all the integers in 'positive_integers' squared 'sum_squared'
-iterate over the argument 'num' starting at 1 
  -push each number into 'positive_integers'
-iterate over 'posistive_integers' and trasnform each integer into its squared version and assign to 'squared_numbers'
-add up all the numbers in 'positive_integers' and square the total sum
 -assign to 'sum_squared'
-subtract 'sum_squared' minus the sum of 'squared_numbers'
-return the total of the subtraction

=end

def sum_square_difference(num)
	positive_integers = []

	1.upto(num) {|num| positive_integers << num}

	squared_numbers = positive_integers.map {|num| num**2}.reduce(:+)

	sum_squared = (positive_integers.sum)**2

  sum_squared - squared_numbers
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150