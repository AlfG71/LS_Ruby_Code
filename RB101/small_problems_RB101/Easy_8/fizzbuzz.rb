# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

=begin   

Problem
  
  -create a method that takes two integer arguments
  -the first integer is the starting number the second is the ending number
  -print out all the numbers between the starting number and the ending number
  -print the word Fizz whenever a number is divisible by 3
  -print the word Buzz whenever a number is divisible by 5
  -print the word FizzBuzz whenever the word is divisible by both 3 and 5

Example:

  -fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Data Structure
  
  Input  = integer
  Output = integer

Algorithm

  1) Create a method with two parameters
       -fizzbuzz(starting_number, ending_number)
  
  2) Use the starting_number as a starting point and ending_number as the ending point to print out all the numbers in between including starting_number & ending_number (number)
      -starting_number.upto(ending_number) 
        -if number divisible by 3 and number divisible by 5
          -print FizzBuzz
        -if number divisible by 3
          -print Fizz
        -id number divisible by 5
          -print Buzz
        -else
          -print number           
=end

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    if number % 3 == 0 && number % 5 == 0
      result << 'FizzBuzz'
    elsif number % 3 == 0
      result << 'Fizz'
    elsif number % 5 == 0 
      result << 'Buzz'
    else
      result << number
    end
  end
  result.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
