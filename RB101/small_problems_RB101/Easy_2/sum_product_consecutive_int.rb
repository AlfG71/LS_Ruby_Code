puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product,"
calculation = gets.chomp

sum_calculation = (1..number).inject {|sum, n| sum + n}
product_calculation = (1..number).inject(1) {|product, n| product * n}

if calculation == 's'
puts "The sum of the integers between 1 and #{number} is #{sum_calculation}."
else
puts "The product of the integers between 1 and #{number} is #{product_calculation}."
end	

# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

=begin 
  P  (understand the Problem)
       -Create a program that asks the user for an integer input greater than the integer zero
       -The program will ask if the user wants the addition or multiplication of all the integers between the integer 1 and the integer the user inputed
       -The program will calculate either the addition or the multiplication of the user input
       -The program will output the result of the calculation

  E  (Examples)
       ->> Please enter an integer greater than 0:
       -5
       ->> Enter 's' to compute the sum, 'p' to compute the product.
       -s
       -The sum of the integers between 1 and 5 is 15.


       ->> Please enter an integer greater than 0:
       -6
       ->> Enter 's' to compute the sum, 'p' to compute the product.
       -p
       -The product of the integers between 1 and 6 is 720.

  D  (Data structures)
       Input:
         -Integer
         -String
       Output:
         -String

  A  (Algorithm)
      -get user input: puts ">> Please enter an integer greater than 0:"
      -store user input in new variable (number = gets.chomp)
      -get user input: puts ">> Enter 's' to compute the sum, 'p' to compute the product,"
      -store user input in a new variable (calculation = gets.chomp)
      -create new variable (sum_calculation = (1..num).sum)
      -create new variable (product_calculation = (1..num).reduce(1, :*))
      -evaluate calculation variable between the strings 's' or 'p'
      -Assign calculation evaluation input 's' to sum_calculation, 'p' to product_calculation
      -if calculation == 's' output "The sum of the integers between 1 and #{number} is #{sum_calculation}."
      -if calculation == 'p' output "The product of the integers between 1 and #{number} is #{product_calculation}"	


  C  (Code)
       puts ">> Please enter an integer greater than 0:"
       number = gets.chomp
       puts ">> Enter 's' to compute the sum, 'p' to compute the product,"
       calculation = gets.chomp

       sum_calculation = (1..num).sum
       product_calculation = (1..num).reduce(1, :*)

       if calculation == 's'
       	puts "The sum of the integers between 1 and #{number} is #{sum_calculation}."

       	else
       		puts "The product of the integers between 1 and #{number} is #{product_calculation}."	

=end