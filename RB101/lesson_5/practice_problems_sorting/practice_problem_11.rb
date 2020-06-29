# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

=begin
	P
	-given a nested array, use a combination of methods
	-one of the methods must be select or reject
	-the program will return a nested array with the same structure as the original but it will only contain the intergers that are multiples of 3 from the original array

	E
	-arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
	=> arr = [[3], [9], [15]]

	D
	Input
	  -array
	Output
	  -array

	A
	-iterate over each sub_array
	-in those iterations evaluate on each element of each sub_array 
	-output a new nested array with only the elements whose values are multiples of the integer 3

	C
	arr.each do |sub_array|
		sub_array.select do |i|
			i % 3 == 0
			end
			end
	
=end
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
new_arr = arr.map do |sub_array|
	sub_array.select do |i|
		i % 3 == 0
	end
end
p new_arr