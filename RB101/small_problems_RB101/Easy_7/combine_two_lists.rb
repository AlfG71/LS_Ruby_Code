# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

=begin
	
Problem:

-create a method that takes two array arguments
-it will return a new array with the elements being a compbination of the elements in the two arguments in alternating fashion
	
# Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Data Structures:

Input  = two arrays
Output = array

Algorithm:

1) create a method deifinition
  -interleave(arr1, arr2)
  -create a new resulting array object result = []

2) alternate combining the elements of the two arguments into the new array result
  -loop do 
    -result << arr1[index] << arr2[index]

3) return new single combined array    

=end

def interleave(arr1, arr2)
	result = []
	index = 0

	loop do 
		result << arr1[index] << arr2[index]
		index += 1
		break if index >= arr2.length
	end
	
	result
end

# def interleave(arr1, arr2)  # refactored with Zip method
# 	arr1.zip(arr2).flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# def interleave(arr1, arr2)       # Alternative solution
#   result_arr = []
#   counter = 0
  
#   loop do 
#     result_arr << arr1[counter]
#     result_arr << arr2[counter]
#     counter += 1
#     break if counter == arr1.length
#   end
  
#   result_arr
# end

# def interleave(arr1, arr2)    #alternative solution second go around
#   result = []
#   index = 0

#   (arr1.length).times do |_|
#     result << arr1[index] << arr2[index]
#       index += 1
#   end
#   result
# end

# def interleave(arr1, arr2)    #alternative solution 2 second go around
#   result = []
#   0.upto(arr1.length - 1) {|num| result << arr1[num] << arr2[num]}
#   result
# end

