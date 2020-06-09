final_integer = []
puts "==> Enter the 1st number:"
first_number  = gets.chomp
final_integer << first_number 
puts "==> Enter the 2nd number:"
second_number = gets.chomp
final_integer << second_number 
puts "==> Enter the 3rd number:"
third_number  = gets.chomp
final_integer << third_number 
puts "==> Enter the 4th number:"
fourth_number = gets.chomp
final_integer << fourth_number 
puts "==> Enter the 5th number:"
fifth_number  = gets.chomp
final_integer << fifth_number 
puts "==> Enter the last number:"
last_number   = gets.chomp

if final_integer.include?(last_number)
puts "The number #{last_number} appears in #{final_integer}."
else 
puts "The number #{last_number} does not appear in #{final_integer}."
end

# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.


=begin 
  P  (understand the Problem)
       -write a program that takes multiple user inputs
       -the inputs are 6 integers
       -the program will output if the last integer entered is equal to any of the previous integers already inputed

  E  (Examples)
       - ==> Enter the 1st number:
       - 25
       - ==> Enter the 2nd number:
       - 15
       - ==> Enter the 3rd number:
       - 20
       - ==> Enter the 4th number:
       - 17
       - ==> Enter the 5th number:
       - 23
       - ==> Enter the last number:
       - 17
       - The number 17 appears in [25, 15, 20, 17, 23].


       - ==> Enter the 1st number:
       - 25
       - ==> Enter the 2nd number:
       - 15
       - ==> Enter the 3rd number:
       - 20
       - ==> Enter the 4th number:
       - 17
       - ==> Enter the 5th number:
       - 23
       - ==> Enter the last number:
       - 18
       - The number 18 does not appear in [25, 15, 20, 17, 23].

  D  (Data structure)
       Input
         -Integers
       Output:
         -Integers

  A  (Algorithm)
       -ask for user input 5 times "==> Enter the (1st..5th) number:"
       -ask for user input one last time "==> Enter the last number:"
       -create a new empty array (integer_collection)
       -collect the first five numbers inputed into the new array (integer_collection)
       -initialize a new variable for the last number inputed (final_integer)
       -evaluate if the last integer (final_integer) entered is inside the array               (integer_collection) already
       -if the last integer entered is inside the array 
       	  -output "The number #{last_number} appears in #{array}."

  C  (Code)
     final_integer = []
     puts "==> Enter the 1st number:"
     first_number = gets.chomp
     final_integer << first_number 
     puts "==> Enter the 2nd number:"
     second_number = gets.chomp
     final_integer << second_number 
     puts "==> Enter the 3rd number:"
     third_number = gets.chomp
     final_integer << third_number 
     puts "==> Enter the 4th number:"
     fourth_number = gets.chomp
     final_integer << fourth_number 
     puts "==> Enter the 5th number:"
     fifth_number = gets.chomp
     final_integer << fifth_number 
     puts "==> Enter the last number:"
     last_number = gets.chomp

     if final_integer.include?(last_number)
     	puts "The number #{last_number} appears in #{final_integer}."
     	else 
     		puts "The number #{last_number} does not appear in #{final_integer}."
     		end

=end