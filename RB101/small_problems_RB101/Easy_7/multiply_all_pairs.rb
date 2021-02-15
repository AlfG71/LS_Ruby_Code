# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.


=begin
	
Problem:

-create a program that takes 2 array arguments with numbers as their index values
-it will return a new array with the product of each possible pair combination from both arguments 
-the final array elements will be sorted in ascending order	

# Examples:

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Data Structures:

Input  = Array
Output = Array

Algorithm:

-create a method definition with two array parameters
-create a resulting new array object to store the product values of the arguments
-iterate over both arguments while multiplying for each element in each argument and add the product results into the resulting array
-return the resulting array

1) create a method definition
  -multiply_all_pairs(arr1, arr2)

2) create a new storing object
  -array_of_products

3) Iterate over the second array using the first array element and multiplying both numbers on each iteration    
  -loop do
    -append arr1[0] * arr2[0] to array_of_products

4) return array_of_products      

=end

# def multiply_all_pairs(arr1, arr2)
# 	array_of_products = []

# 	arr2.each do |num|
#     array_of_products << arr1[0] * num << arr1[1] * num
# 	end

#   array_of_products.sort
# end

# multiply_all_pairs(arr1, arr2)     # Alternate solution
#   array_pairs = arr1.product(arr2)
#   array_results = []
  
#   array_pairs.each do |sub_arr|
#       array_results << sub_arr[0] * sub_arr[1]
    
#   end
#   array_results.sort
  
# end

# def multiply_all_pairs(arr1, arr2)  # alterante solution second go around
#   result = []

#   0.upto(arr2.size - 1) do |num1|
#     0.upto(arr1.size - 1) do |num2|
#       result << arr2[num1] * arr1[num2]
#     end
#   end
#   result.sort
# end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|arr| arr.reduce(:*)}.sort
  
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]