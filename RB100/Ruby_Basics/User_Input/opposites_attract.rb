# Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def input_number
  input = nil
  loop do
    puts "Please enter a positive or negative integer:"
    input = gets.chomp
    break if valid_number?(input)
    puts "Zero is not a valid number"
    puts "Please start over..."
  end
  input.to_i
end

  input1 = nil
  input2 = nil

loop do
  input1 = input_number
  input2 = input_number
  break if input1 > 0 && input2 < 0 || input1 < 0 && input2 > 0
  puts "One integer has to be negative and one positive"
  puts "Please start over!"
end

sum = input1 + input2
puts "#{input1} + #{input2} = #{sum}"


=begin
#P
  - Request 2 integers from user
  - my program will add those 2 integers together
  - my program will display the result
  - my program will require that one integer be positive and one negative
  - my program will validate each integer to make sure one is positive and one is negative
  - if the integers are not validated then the program will start over
  
#E
  Give me a number
    5
  Give me another number
    -5
  5 + -5 = 0
  
  Give me a number
    6
  Give me another number
    9
  One number needs to be postive and one negative.
  Please input another set of numbers.
  
  Give me a number
    5
  Give me another number
    0
  Zero is not a valid number
  Please start over

#D (Input/Output)
  -Loop to validate information
  -Method for input validation
  -String prompts from the program for the user
  Input:
    - (2) Integers
      - neither integer can be zero
      - 1 has to be positive
      - 1 has to be negative
  Output: 
    - An equation of the sum of the two integers inputed

A:lgoritm Pseudocode

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def input_number
  input = nil
  loop do
    puts "Please enter a positive or negative integer:"
    input = gets.chomp.to_i
    break if valid_number?(input)
    puts "Zero is not a valid number"
    puts "Please start over..."
  end
  input
end

Declare a new variable for first user input (input1)
Declare a new variable for second user input (input2)
  
Loop
  Ask the user for an integer
    receive the input from the user and store in first       declared variable (input is a string, need to           change to an integer)
  Ask the user for a second integer
    receive the second input and store in the second         declared variable
  break out of the loop if their input is valid
  invalid input ask the user to try again
end the loop
  
Declare a variable (sum) to output the result of the program which would be the sum of the two integers (input1 + input2)
Print the result as an equation of the sum of the two integers

C:ode
=end
