# Build a program that displays when the user will retire and how many years she has to work till retirement.

=begin
  
Problem:

 -Create a program that asks the user what their age is and at whar age they will retire
 -It will return the current year, a value equal to the number of years the user has to work until retirement and what year it will be when they retire. 

Example:

=> What is your age? 30
=> At what age would you like to retire? 70

=> It's 2016. You will retire in 2056.
=> You have only 40 years of work to go!

Data Structures:

Input  = Integer
Output = String

Algorithm

1) Ask for user input by printing a string "What is your age?"
2) Store the age value in a new variable
3) Ask for user input by printing the string "At what age would you like to retire?"
4) Store the retirement age value in a new variable
5) Output the current year
6) Output the expected year of retirement
  a) Use the difference between the user age and the retirement age and add that value to the current year
7) Output the number of years left until retirement
  a) Use the difference between the user age and the retirement age  

=end

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

retirement_gap = retirement_age - age
current_year = Time.now.year

puts "It's #{current_year}"
puts "You will retire in #{current_year + retirement_gap}"
puts "You only have #{retirement_gap} years of work to go!"
