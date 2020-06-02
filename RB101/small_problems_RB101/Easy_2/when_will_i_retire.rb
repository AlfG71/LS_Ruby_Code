puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

time_to_retire = retirement_age - age
current_year = 2020

retirement_year = current_year + time_to_retire

puts "It's #{current_year}.  You will retire in #{retirement_year}"
puts "You only have #{time_to_retire} years of work to go!"


# Build a program that displays when the user will retire and how many years she has to work till retirement.

=begin
  P  (understand the Problem)
       -create a program that prints the following
         -when the user will retire
         -how long the user has to work until retirement

  E  (Examples)
       -What is your age? 30
       -At what age would you like to retire? 70

       -It's 2016. You will retire in 2056.
       -You have only 40 years of work to go!

  D  (Data structures)
       Input:
         -Integer
       Output:
         -String

  A  (Algorithm)
       -get user input "What is your age?"
       -create new (age) variable and store user input
       -get user input "At what age would you like to retire?"
       -create new (retirement_age) variable and store second user input
       -create (current_year = 2020) variable
       -calculate how long it will take to reach the retirement age from the current age
       -create (retirement_year) variable and store calculation result
       -output "It's 2020.  You will retire in #{retirement_year}"
       -output "You only have #{time_to_retire} years of work to go!"

  C  (Code)
       puts "What is your age?"
       age = gets.chomp
       puts "At what age would you like to retire?"
       retirement_age = gets.chomp
       time_to_retire = retirement_age - age
       current_year = 2020
       retirement_year = current_year + time_to_retire
       puts "It's #{current_year}.  You will retire in #{retirement_year}"
       puts "You only have #{time_to_retire} years of work to go!"

=end