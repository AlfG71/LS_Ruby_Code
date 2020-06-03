puts "What is your name?"
name = gets.chomp

if name.include?("!")
	name = name.chop
puts "HELLO #{name.upcase}.  WHY ARE WE SCREAMING?"
else
puts "Hello #{name}."
end

# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

=begin 
  P  (understanding the Problem)
       -Write a program that asks for user input (user's name)
       -The program will output a greeting to the user based on his name
       -But if the user input ends with an exclamation sign          (! "name!") the program will yell back to the user

  E  (Examples)
       -What is your name? Bob
       -Hello Bob.
       -What is your name? Bob!
       -HELLO BOB. WHY ARE WE SCREAMING?

  D  (Data structures)
       Input:
         -String
       Output:
         -String

  A  (Algorithm)
       -Ask for user input "What is your name?"
       -Declare variable (name) to store user input
       -If the user input does not include an exclamtion sign at the end of the string, output a greeting "Hello name."
       -If the user input includes and exclamation sign at the end of the name, output "HELLO NAME.  WHY ARE YOU SCREAMING AT ME?"

  C  (Code)
       puts "What is your name?"
       name = gets.chomp
       if name.include?("!")
       	puts "HELLO #{name.upcase}.  WHY ARE WE SCREAMING?"
       	else
       		puts "Hello #{name}."
       		end

=end