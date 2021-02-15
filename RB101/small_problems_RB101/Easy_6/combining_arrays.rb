# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

=begin
Problem
  
  -create a method that takes two array parameters and returns an array with all the values from the original argument arrays
  -the returned combined array will have no duplicate values

Example

  -merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

Data Structure
  
  Input  = array
  Output = array

Algorithm

  -create a method with two array arguments
    -merge(array1, array2)
  
  -combine both arguments into a new array without duplicate values  
    -iterate over the second array and append the values to the first array
    -skip the iteration IF the first array already contains a value in the second array
  -Sort the new array with all the elements
  -return the new array 

Code
=end

# def merge(arr1, arr2)
#   arr2.each do |num| 
#     unless arr1.include?(num)
#       arr1 << num
#     end
#   end
#   arr1
# end

# def merge(arr1, arr2)   # Solution 2 alternate second go around
#   counter = 0

#   loop do 
#     arr1 << arr2[counter]
#     counter += 1
#     break if counter >= arr2.length
#   end

#   arr1.uniq
# end

def merge(arr1, arr2)         # Solution 3 alternate second go around
  result = arr1 + arr2
  
  result.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]