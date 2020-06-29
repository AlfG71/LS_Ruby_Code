# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

=begin 
  P
  -create a method that takes an array as a parameter running_total(arr)
  -the method will return a new array with the same number of elements
  -each element in the new array will be a running total (sum) of the elements from the original array

  Example

  => running_total([2, 5, 13]) == [2, 7, 20] 
  => running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] 
  => running_total([3]) == [3]
  => running_total([]) == []

  D
  Input
    -Array
  Output
    -Array

  A
  -define a method running_total(arr)
  -evaluate the elements in the array
    -if the element is at index 0 of the array, append that value to the new array
    -iterate starting at index 1 the element 
    -add the current index value to the previous element value of the new array and use that total in the current index iteration
    -stop iterating once there are no more elements to evaluate in the original array
  -create a new array to collect the elements from the original array after evaluation
  -return the new array 
  
  C
=end
require 'pry'
def running_total(arr)
  new_arr = []

  arr.each_index do |idx|
  	binding.pry
  		if idx == 0
  			new_arr << arr[idx]
  		elsif  
  			new_arr << arr[idx] + new_arr[idx - 1]
  		end
	  end
	new_arr
end

p running_total([2, 5, 13]) == [2, 7, 20] 
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] 
p running_total([3]) == [3]
p running_total([]) == []