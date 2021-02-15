# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

=begin
  Problem

  -Create a method that takes two arguments, one a positive integer and the other a boolean (true or false)
  -The integer argument will represent a salary number that will be cut in half if the boolean argument is true or be set to 0 if the boolean argument is false

Examples:

 - puts calculate_bonus(2800, true) == 1400
 - puts calculate_bonus(1000, false) == 0
 - puts calculate_bonus(50000, true) == 25000

 Data Structures:
   Input  = Integer and Boolean
   Output = Integer

 Algorithm
 
 1) Create a method definition with two parameters calculate_bonus(salary, boolean)
 2) If the booelan is true, divide the salary by half
 3) If the boolean is false, reduce the salary to 0
 4) Return the new salary  

=end

def calculate_bonus(salary, boolean)
  return 0 if boolean == false
  salary/2
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
