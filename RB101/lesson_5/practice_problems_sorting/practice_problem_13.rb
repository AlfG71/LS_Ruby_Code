# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

=begin 
  P
  -given a nested array we need to sort each sub_array
  -the sorting will be based on the values of the odd numbers in each array
  -the output will be a new array with the sub_arrays sorted in the order described above

  E
	-arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
	-The sorted array should look like this:

	-[[1, 8, 3], [1, 6, 7], [1, 4, 9]]  

	D
	Input
	  -array
	Output
	  -array

	A
	-compare each sub_array
	-compare only odd numbers
	-return new sorted array

=end
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
#The sorted array should look like this:

[[1, 8, 3], [1, 6, 7], [1, 4, 9]]

result = arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
 p result
 
