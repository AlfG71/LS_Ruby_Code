def average(array)
  array_total = array.sum
  array_total / array.count
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

# Examples:

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

=begin
  P  (understand the Problem)
    -We need to write a method
    -The method takes one argument of an array
    -The array argument will contain integers
    -The method will return the average of all the numbers in the array
    -The array will never be empty and always have positive numbers

  E  (Examples)
    -puts average([1, 5, 87, 45, 8, 8]) == 25
    -puts average([9, 47, 23, 95, 16, 52]) == 40
    -The tests above should print true.

  D  (Data structures)
    Input:
      -array
      -integers
    Output:
      -integer
  A  (Algorithm)
    -create a method called average with an (array) of integers as a parameter 
    -add all the individual integer elements in the array
    -return the average value of the sum of the elements in the array

  C  (Code)
    def average(array)
      array_total = array.sum
      puts array_total / array.count
    end
=end
  