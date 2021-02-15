# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

=begin
	
  Problem

  -Create a method that returns the age of Teddy
  -The age will be randomly generated from the numbers between 20 and 200
	
Example Output:

Teddy is 69 years old!

Data Structures:

Input  = Integer
Output = String

Algorithm

1) Create a range of Integers between 20 and 200 (20..200)
2) Randomly select a number from the range
3) Create a string object  "Teddy is years old!"
4) Add the randomly selected number to the string
  a) Interpolate the number into the string
5) Return the interpolated string  

=end

# def age
# 	a = rand(20..200)
# 	puts "Teddy is #{a} years old!"
# end

# age

#Further Exploration

#Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.

def your_age(name)
	a = rand(20..200)
	if name == ''
		puts "Teddy is #{a} years old!"
	else
	  puts "#{name}, is #{a} years old!"
  end
end

puts "What's your name?"
name = gets.chomp

your_age(name)
