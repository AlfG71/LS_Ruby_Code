# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

=begin
	
Problem:

- Create a method that takes an integer argument n
-The method will display a right triangle with all the sides having n stars
-The triangle will start with n-1 empty spaces and add one to each line until the final bottom line has a total of n stars

# Examples:

triangle(5)

#     *
#    **
#   ***
#  ****
# *****
triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

Data Structures:

Input  = Integer
Output = String

Algorithm:

1) Create a method definition
  -triangle(n)

2) Use the argument as the value to print n number of lines starting with one '*' on the first line, increasing by one '*' on each subsequent line and ending with an n number of '*' on the final line  
  -Create a new string object_star = '*'
  -Create a new string object empty_space = ' '
  -increase the value of object_star on each iteration
  -decrease the value of empty_space on each iteration   

=end

def triangle(value)
	object_star = '*'
	empty_space = ' '

	1.upto(value) {|int| puts empty_space * (value - int) + object_star * int }
end

triangle(5)
#     *
#    **
#   ***
#  ****
# *****
triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********


# def triangle(int)
#   counter = 0
#   space_counter = int
#   #space = ' '
  
#   loop do 
#     puts (' ' * space_counter) + '*' * (counter + 1)
#     break if counter == int - 1
#     counter += 1
#     space_counter -= 1
#   end
# end
