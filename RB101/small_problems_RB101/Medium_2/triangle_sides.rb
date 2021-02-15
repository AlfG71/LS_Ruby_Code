=begin

A triangle is classified as follows:

equilateral: All 3 sides are of equal length
isosceles:   2 sides are of equal length, while the 3rd is different
scalene:     All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Problem:
-Create a method that takes 3 integer arguments and will return one of four symbols (:equilateral, isoscele, :scalene or :invalid) depending on a set of rules that will be evaluated and be dependent on the arguments.

Rules:
- equilateral: All 3 sides are of equal length
- isosceles:   2 sides are of equal length, while the 3rd is different
- scalene:     All 3 sides are of different length
- invalid:     one side is 0, or the sum of the two shortest sides is less than the value of the longest side (if the two lessser nubers add to less than the highest number)

Examples:

triangle(3, 3, 3) == :equilateral
=> all arguments are equal 

triangle(3, 3, 1.5) == :isosceles
=> 2 sides of equal length 

triangle(3, 4, 5) == :scalene
=> all arguments are different

triangle(0, 3, 3) == :invalid
=> one side is 0

triangle(3, 1, 1) == :invalid
=> two lesser sides add to less than the bigger side

Data Structures:
-input: 3 integers
-output: symbol depending on the input evaluation

Algorithm

1) create a method definition

2) create a case statement or a conditional statement to set the rules of evaluation
   -if all three inputs is the same
     -return :equilateral
   -elsif only two inputs are the same  
     -return :isosceles
   -elsif all three inputs are different
     -return :scaelene
  -else
    -return :invalid

3) return symbol based on conditions

=end

def triangle(side1, side2, side3)
  array_of_numbers = [side1, side2, side3]
  
  if array_of_numbers.any?(0) || side1 + side2 < side3 || side2 + side3 < side1 || side1 + side3 < side2 
    :invalid
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 != side2 && side2 != side3 && side1 != side3
    :scalene
  else
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid