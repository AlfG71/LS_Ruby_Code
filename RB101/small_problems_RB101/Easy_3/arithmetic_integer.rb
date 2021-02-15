# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

=begin
  Problem 
    - Create a program that asks the user to enter two positive integer numbers
    - The program will return the result of 6 different operation on the two numbers entered (addition, subtraction, product, quotient, remainder, and power)	
    - Assume all numbers are valid

  Example:
  
  ==> Enter the first number:
  23
  ==> Enter the second number:
  17
  ==> 23 + 17 = 40
  ==> 23 - 17 = 6
  ==> 23 * 17 = 391
  ==> 23 / 17 = 1
  ==> 23 % 17 = 6
  ==> 23 ** 17 = 141050039560662968926103

  Data Structures:

  Input  = Integer
  Output = Integer

  Algorithm:

  1) Ask for user input 
    -puts "==> Enter the first number:"
    -first_number = gets.chomp
    -puts "==> Enter the second number:"
    -second_number = gets.chomp
  2) Perform the following operations with both input numbers
    -first_number + second_number
    -first_number - second_number
    -first_number * second_number
    -first_number / second_number
    -first_number % second_number
    -first_number ** second_number

=end

def prompt(msg)
	puts "#{msg}"
end

prompt_options = ['first', 'second']
number_array = []

prompt_options.each do |option|
  prompt("=>  Enter the #{option} number:")
  input = gets.chomp
  number_array << input
end
first_number = number_array[0].to_i
second_number = number_array[1].to_i

# alternate solution

def operation(num1, num2)
  puts "==> #{num1} + #{num2} = #{[num1, num2].reduce(:+)}"
  puts "==> #{num1} - #{num2} = #{[num1, num2].reduce(:-)}"
  puts "==> #{num1} * #{num2} = #{[num1, num2].reduce(:*)}"
  puts "==> #{num1} / #{num2} = #{[num1, num2].reduce(:/)}"
  puts "==> #{num1} % #{num2} = #{[num1, num2].reduce(:%)}"
  puts "==> #{num1} ** #{num2} = #{[num1, num2].reduce(:**)}"
end

def prompt
  puts "==> Enter the first number:"
  num1 = gets.chomp.to_i

  puts "==> Enter the second number:"
  num2 = gets.chomp.to_i

  operation(num1, num2)
end

prompt

puts "#{first_number} + #{second_number} = #{first_number + second_number}"
puts "#{first_number} - #{second_number} = #{first_number - second_number}"
puts "#{first_number} * #{second_number} = #{first_number * second_number}"
puts "#{first_number} / #{second_number} = #{first_number / second_number}"
puts "#{first_number} % #{second_number} = #{first_number % second_number}"
puts "#{first_number} **#{second_number} = #{first_number **second_number}" 
