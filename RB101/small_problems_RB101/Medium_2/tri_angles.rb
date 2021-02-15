# Tri-Angles

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

=begin

Problem:
-Create a method that takes 3 arguments that represent three angles of a triangle
-It will return a symbol based on the value of the arguments according to a set of rules

-rules:
-:right == One angle of the triangle is a right angle (90 degrees)
-:acute == All 3 angles of the triangle are less than 90 degrees
-:obtuse == One angle is greater than 90 degrees
-:invalid == the sum of the arguments is not 180 or any of the arguments has a value less than 0

Examples:
triangle(60, 70, 50) == :acute
=> each of the three values are less than 90

triangle(30, 90, 60) == :right
=> one of the values is exactly 90

triangle(120, 50, 10) == :obtuse
=>one of the values is greate than 90

triangle(0, 90, 90) == :invalid
=> One of the values is 0

triangle(50, 50, 50) == :invalid
=> the sum of the values is less than 180

Data Structures:
input : integer
output: symbol

Algorithm:
1) Create a method definition

2) Create a new array object to collect the arguments

3) Create a conditional statement based on the rules

4) return the symbol based on which part of the conditional statement evaluates to true


=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  
  if angles.any?(0) || angles.sum != 180
    :invalid
  elsif angles.any? {|angle| angle > 90}
    :obtuse
  elsif angles.all? {|angle| angle < 90}
    :acute
  else
    :right
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid