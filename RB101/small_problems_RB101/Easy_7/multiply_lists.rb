# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

=begin
	
Problem:

-create a method that takes two arrays as arguments
-each array contains integers as elements and will return a new array
-the elements in the new array will represent the product of each number at their respective index from the original arguments
	
# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Data Structures:

Input  = Array
Output = Array

Algorithm:

1) create a method definition that takes two arrays sa arguments
  -multiply_list(arr1, arr2)

2) create a new empty array to store the product values of multiplying the argument elements
  -product_array = []

3) create counter variables for each argument and use it to perform the product that will go in the product array
  -array1_index = 0
  -array2_index = 0

4) loop over each array argument, multiply their elements according to their index and add the product to the corresponding index value in the product_array 

5) return the product_array     

=end

# def multiply_list(arr1, arr2)
# 	product_array = []
# 	array1_index  = 0
#   array2_index  = 0

#   loop do 
#   	product_array << (arr1[array1_index] * arr2[array2_index])
#   	array1_index  += 1
#     array2_index  += 1
# 	  break if array1_index >= arr1.length
# 	end

# 	product_array
# end

# def multiply_list(arr1, arr2)   # Further Exploration
# 	arr1.zip(arr2).map { |arr| arr.reduce(:*) }
# end

# def multiply_list(arr1, arr2)     # Alternate Solution
#   arr_of_products = []
  
#   arr1.each_with_index do |number, index|
#     arr_of_products << (arr1[index] * arr2[index])
#   end
#   arr_of_products
# end

def multiply_list(arr1, arr2)          # alternate solutions second go around
  result = []

  arr1.each_with_index do |num, index|
    result << num * arr2[index]
  end

  result
end

# def multiply_list(arr1, arr2)
#   arr1.map.with_index {|num, index| arr1[index] * arr2[index]}
# end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]