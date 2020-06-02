
age = rand(20..200)

puts "What's your name?"
name = gets.chomp

if name == ''
  name = 'Teddy'
end

puts "Hi #{name}! You are now #{age} years old!"

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!