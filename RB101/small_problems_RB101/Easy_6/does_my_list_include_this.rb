# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

=begin
Problem:

- Create a method that takes an array and an integer as arguments
-the integer will be used as a value to search inside the array and see if it is included as a value within its elements and return true if it does
-can't use the include? method

Examples:

-include?([1,2,3,4,5], 3) == true
-include?([1,2,3,4,5], 6) == false
-include?([], 3) == false
-include?([nil], nil) == true
-include?([], nil) == false

Data Structures:

Input  = Array and Integer
Output = Boolean

Algorithm:

1) Create a method definition 
  -include?(arr, value)

2) iterate over the array argument and search for the integer argument in the elements in the array
  -arr.any?(value) 

3) Return the boolean 

=end

# def include?(arr, value)
# 	arr.any?(value)
# end

def include?(arr, search_number)   # alternate solution second go around
  arr.each do |element|
    return true if element == search_number
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
