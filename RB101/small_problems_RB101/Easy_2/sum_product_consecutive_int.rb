# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

=begin
  
Problem:
-Create a program that ask for user input of an integer greater than 0 and then asks the user if they want to add or multiply all the numbers between 1 and the inputed number
-Return the sum or product of all the numbers between 1 and the user inputed number
  
Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

Data Structures:

Input  = Integer
Output = String

Algorithm:

1) Ask for user input "=>  Please enter an integer greater than 0:"
2) Store the integer value in a new variable user_input
3) Ask for user input 's' for sum or 'p' for multiply
  -if 's'
    -add all the numbers from 1 upto the user input number
  -else
    -multiply all the numbers from 1 upto the user input number  
4) Return the corresponding result     

=end

puts "=>  Please enter an integer greater than 0:"
user_input = gets.chomp.to_i

puts "=>  Enter 's' to compute the sum, 'p' to compute the product."
calculation = gets.chomp

if calculation == 's'
  puts "The sum of the integers between 1 and #{user_input} is #{(1..user_input).reduce(:+)}." 
elsif calculation == 'p'
  puts "The product of the integers between 1 and #{user_input} is #{(1..user_input).reduce(:*)}."
else
  puts "Oops, unknown input!"
end

# LS solution:
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end