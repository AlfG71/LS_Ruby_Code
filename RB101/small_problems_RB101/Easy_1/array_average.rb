# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

=begin

Problem:
Create a method that takes and array of integers
It will return the average of the integers added together
The result will be an integer
The numbers are all positive

Examples:

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40 

Data Structures:
  Input  = Array
  Output = 

  Algorithm:
  1) Create a method definition that takes an array argument average(arr)
  2) Add all the integers in the array
  3) Divide the sum of the integers by the total number of integers in the array
  4) Return the result of the division

=end

def average(arr)
  arr.sum/arr.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
