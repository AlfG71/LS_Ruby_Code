#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

=begin
Problem:
-Create a method that takes two arguments	
-One argument is a string, the other a positive integer
-It will print the string argument the amount of times equal to the value of the integer argument

Example
repeat('Hello', 3)

=> Hello
=> Hello
=> Hello

Data Structures:
Input  = String, Integer
Output = String

Algortihm:
1) Create a method definition with 2 parameters repeat(str, num)
2) Print the string int times
  a) use the times method to iterate
  b) use the puts method to print
	
=end

def repeat(str, num)
  num.times {|_| puts str}
end

repeat('Hello', 3)

