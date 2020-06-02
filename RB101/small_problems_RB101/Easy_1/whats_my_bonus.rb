def calculate_bonus(salary, earned_bonus)
  if earned_bonus == true
  	salary = salary / 2 
  elsif earned_bonus == false
    0
  end  
end
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

=begin
  P (understand the Problem)
    -Write a method that takes two arguments
    -One of the arguments is a positive integer and the other is a boolean
    -The method will calculate the bonus based on the value of the integer passed as an argument
    -If the boolean value returns true the bonus is half of the integer value
    -If the boolean value returns false the bonus is 0

  E  (Examples)
    -puts calculate_bonus(2800, true) == 1400
    -puts calculate_bonus(1000, false) == 0
    -puts calculate_bonus(50000, true) == 25000
    -The tests above should print true.
  
  D  (Data structures)
		   -Input:
		      -Integer
		      -Boolean value

		    -Output:
		      -Integer

  A  (Algorithm)
      -Create a method definition with a method called calculate_bonus
      -Pass two parameters to the method (salary, earned_bonus)
      -Evaluate the boolean argument
      -If the boolean argument is true, divide the integer argument in half
      -Output that half value of the integer as the bonus
      -If the boolean returns false
      -Output the number zero

  C  (Code)
    def calculate_bonus(salary, earned_bonus)
    	if earned_bonus > 1000 
    		puts salary / 2
    		else
    			puts 0
=end