# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

=begin

Problem:
  - Create a program that displays a 4 pointed diamond in an n x n grid
  - n is an odd integer that the method takes as an argument
  - assume n is always an odd integer

# Examples:

# diamond(1)

# *           => 1 row, 1 character

# diamond(3)

#  *          => starts at 1
# ***         => 3 rows, 3 characters sideways and 3 characters up and down
#  *          => ends at 1

# diamond(9)

#     *       => starts at 1
#    ***
#   *****
#  *******
# *********   => 9 rows, 9 characters sideways and 9 characters up and down 
#  *******
#   *****
#    ***
#     *       => ends at 1

Data Structures:

Input  = Integer
Output = String

Algorithm: 

  1) Create a method definition that takes an integer argument
       -diamond(int)

  2)      

=end

def diamond(int)
	1.upto(int) do |_|
    p '*' * _
	end
end

diamond(1)
diamond(3)
diamond(9)
