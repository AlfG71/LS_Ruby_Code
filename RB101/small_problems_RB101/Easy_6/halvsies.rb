# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

=begin
Problem

  -create a method that takes an array as an argument
  -the method will return 2 arrays as a pair of nested arrays
  -the first nested array will contain the values corresponding to the first half of the original array
  -the second nested array will contain the values corresponding to the second half of the original array
  -if the original array contains uneven values, the first nested array will contain one more value than the second nested array
  -if the original array contains just one value, the first nested array will have that value followed by an empty second nested array
  -if the original array is empty, then two empty nested arrays will be returned

Examples:

  halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
  halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
  halvsies([5]) == [[5], []]
  halvsies([]) == [[], []]

Data Structure
  
  Input = array
  Output = array

Algorithm

  -create a method that takes an array argument
  -return 2 nested arrays which will be a combination of the values from the original array
  -the first half of the original array values will populate the first nested array
  -the second half of the original array values will populate the second nested array

  Pseudocode

    -define a method with an array argument
    -evaluate the length of the original array
      -if the original array's length is even
      	-produce a nested array [[nested_arr1],[nested_arr2]]
      	  -nested_arr1 values == original array first half values
      	  -nested_arr2 values == original array second half values
      -else if the original array's length is odd
        -produce a nested array	[[nested_arr1],[nested_arr2]]
          -nested_arr1 values == original array first half values + 1
      	  -nested_arr2 values == original array second half values - 1
      -else if the original array's length == 0
        -produce nested array [[nested_arr1],[nested_arr2]]
          -nested_arr1 values == []
      	  -nested_arr2 values == []
      -return new nested array

Code
=end

# def halvsies(array)
#   nested_arr1     = []
#   nested_arr2     = []
#   resulting_array = [nested_arr1, nested_arr2]

#   return resulting_array if array.empty?

#   if array.length == 4
#     nested_arr1 << array[0] << array[1]
#     nested_arr2 << array[2] << array[3]
#   elsif array.length == 5
#     nested_arr1 << array[0] << array[1] << array[2]
#     nested_arr2 << array[3] << array[4]
#   else
#     nested_arr1 << array[0]
#   end

#   resulting_array
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]


# def halvsies(arr)
# 	sub_arr1   = []
# 	sub_arr2   = []
# 	result     = [sub_arr1, sub_arr2]
#   arr_length = arr.size

#   arr.each do |element|
#   	if arr_length == 0
#       result
#     elsif arr_length == 1
#     	result = [[arr[0]], sub_arr2]
#     elsif arr_length % 2 == 0
#     	result = [sub_arr1 = arr[0, 2], sub_arr2 = arr[2, 2]]
#     else
#      	result = [sub_arr1 = arr [0, 3], sub_arr2 = arr [3, 2]]
#     end   

#   end
  
# result
# end

def halvsies(arr)        # alternate solution second go around
  return [[], []] if arr.empty?

  if arr.size % 2 == 0
    [arr[0, arr.size/2], arr[arr.size/2, arr.size - 1]]
  else
    [arr[0, arr.size/2 + 1], arr[arr.size/2 + 1, arr.size]]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]