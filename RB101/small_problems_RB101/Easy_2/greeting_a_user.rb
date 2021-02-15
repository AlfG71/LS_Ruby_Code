# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

=begin
 
 Problem:
 - Create a program that asks a user for their name
 - It will return a greeting by name to the user
 - If the user writes the character "!" in the input, it will return greet the user in all caps and ask why we are screaming in all caps

Examples:

=> What is your name? Bob
=> Hello Bob.

=> What is your name? Bob!
=> HELLO BOB. WHY ARE WE SCREAMING?

Data Structures:

Input   = String
Outpupt = String

Algortihm:

1) Ask for user input "What is your name?"
2) Store the user input in a new variable user_name
  a) If user_name does not include "!"
    -Return a greeting string "Hello #{user_name}"
  b) Else
    -Return an all caps version of the greeting string and ask why we are screaming in all caps as well  

=end

puts "What is your name?"
user_name = gets.chomp

if user_name.include?("!")
  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}!"
end
