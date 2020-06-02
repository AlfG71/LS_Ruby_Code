#Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, integer)
  integer.times {|i| puts string}
end

repeat('Alf ', 10)

# Example:

# repeat('Hello', 3)
# Output:

# Hello
# Hello
# Hello

#====================================

# Repeat Yourself

# Write a method that takes two arguments, 
# a string and a positive integer, 
# and prints the string as many times as the integer indicates

# Casual Pseudo code:
# 	-define a method taking two arguments

# 	-one argument is a string

# 	-one argument is a positive integer

# 	-evaluate the integer

# 	-print the string the number of times equal to the integer number entered

# Formal Pseudo code:
# 	START
# 	-SET two variables, one for each argument
# 	-one variable a string
# 	-one variable an integer (positive)
# 	-DEFINE the method to be used
# 	-NAME the method
# 	-PASS a block for the arguments
# 	-TAKE one of the arguments
# 	-EVALUATE argument.string?
# 	-If False, Repeat
# 	-TAKE second argument
# 	-EVALUATE integer.positive?
# 	-If False, Repeat
# 	-If everything = true
# 	-CALL method

# string = ""
# integer = nil

# def repeat {|string, integer|; puts string(integer).times)
# 		puts "What would you like me to print?"
# 		string = gets.chomp

# 	loop do
# 		puts "How many times would you like me to print it?"
# 		integer = gets.chomp

#   # if integer <= 0
		
#   end
# 	# integer -= 1

# end

# repeat(string, integer)
def repeat(string, number)
  number.times do
    puts string
  end
end

# def repeat(string, number)
#   puts string
# end
repeat('Hello', 3)
