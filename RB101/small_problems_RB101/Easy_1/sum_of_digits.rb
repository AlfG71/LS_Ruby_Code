#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

=begin
  
Problem:
Create a method that takes an integer as an argument
It will return the total sum of the digits in the original argument
For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
  
Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
The tests above should print true.

Data Structure:
  Input  = Integer
  Output = Integer

Algorithm:

 1) Create a method definition with an Integer parameter sum(int) 
 2) Separate the digits that make up the integer argument
   a) turn the integer into a string
   b) separate the individual characters and place them into a new object
   c) turn the individual characters back into integers
 3) Add the separated digits into a total 
 4) Return the result of the addition

=end

def sum(int)
  int.digits.sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
