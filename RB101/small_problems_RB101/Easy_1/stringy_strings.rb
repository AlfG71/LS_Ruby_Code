# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

=begin
 Problem: 
 -Create a method that takes one integer argument
 -It will return a string
 -The string will consist of alternating 1s and 0s always starting at 1
 -The length of the returned string will have a value that is the same as the integer argument that was passed into the method definition 

 Example:
 -puts stringy(6) == '101010'
 -puts stringy(9) == '101010101'
 -puts stringy(4) == '1010'
 -puts stringy(7) == '1010101'

 Data Structure:
 Input  = Integer
 Output = String

 Algorithm
  1) Create a method definition that takes an integer argument stringy(num)
  2) Create an empty collection object result = []
  3) Count up from 1 up to the value of the integer argument
    a) if the number counted is odd
      - append the string '1' to the collection object
    b) if it is even
      - append the string '0' to the collection object
  4) Convert all the number strings into a single string of 1s and 0s
  5) Return the single string       

  
=end

def stringy(int)
  result = []

  1.upto(int) do |num|
    if num.odd?
      result << '1'
    else  
      result << '0'
    end
  end
  result.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
