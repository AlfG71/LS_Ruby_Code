# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

=begin
	Problem:
	  -Create a method that takes an Array of Integers as an argument
	  -It will return a new array with the Integers whose index values are odd numbered (1st, 3rd, 5th... nth_index)

  Examples:

  -oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
  -oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
  -oddities(['abc', 'def']) == ['abc']
  -oddities([123]) == [123]
  -oddities([]) == []

  Data Structures:

  Input  = Array of Integers
  Output = Array of Integers

  Algorithm:

  1) create a method definition that takes an Array argument
  2) iterate over the object to select all the elements whose index values are odd numbered
    -array.select
  3) return newly created array

=end

# def oddities(arr)
#   counter = 0
#   new_arr = []
  
#   loop do
#   break if counter >= arr.size
#   arr[counter]
#   new_arr << arr[counter]
#   counter += 2
#   end

#   new_arr
# end

# def oddities(arr)
# 	result = []
# 	arr.each.with_index do |num, idx|    # Further Exploration
# 	  result << num if idx.odd?
# 	end
# 	result
# end

# REFACTORED

def oddities(arr)
	arr.select.with_index do |element, index|
		index.even?
	end
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
