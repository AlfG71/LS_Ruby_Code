# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

=begin

Problem 

  -create a function that takes a number arguments and calculates the mean average of the numbers
  -it will return a letter that represents the value of the average of the calculated numbers
  -tested values are between 0 and 100
  -mean average is all the argument added together and the result divided by the number of arguments that were added together

Example:

  -get_grade(95, 90, 93) == "A"   => 95 + 90 + 93 = 278 / 3 = returned result
  -get_grade(50, 50, 95) == "D"   => 50 + 50 + 95 = 195 / 3 = returned result

Data Structures

  Input  = integer
  Output = string

Algorithm

  1) create a method that takes 3 integer arguments
       -get_grade(num1, num2, num3)

  3) Add all num1, num1 and num3 together
     -divide result by 3
       -assign final result to new variable
   
  4) Create a case statement for new variable

  5) Return letter value as a string  

=end

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3)/3

  case average 

  when (90..100) then 'A'
  when (80..89) then 'B'
  when (70..79) then 'C'
  when (60..69) then 'D'
  when (0..59) then 'F'

  end         	
end               

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
