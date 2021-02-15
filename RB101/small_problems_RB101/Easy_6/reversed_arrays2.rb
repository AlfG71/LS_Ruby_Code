# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

=begin
  
Problem

  -create a method that takes and array argument and returns a NEW array with the elements from the original array argument reversed.  
  -the new array and elements inside need to be new objects
  -can't use the reverse methods or the method created from the previous exercise

Examples:

  -reverse([1,2,3,4]) == [4,3,2,1]          # => true
  -reverse(%w(a b e d c)) == %w(c d e b a)  # => true
  -reverse(['abc']) == ['abc']              # => true
  -reverse([]) == []                        # => true
  
  -list = [1, 3, 2]                      # => [1, 3, 2]
  -new_list = reverse(list)              # => [2, 3, 1]
  -list.object_id != new_list.object_id  # => true
  -list == [1, 3, 2]                     # => true
  -new_list == [2, 3, 1] 

Data Structure

  Input  = array
  Output = array  

Algorithm

  -create a method that takes an array argument 
  -create a new array and populate it with the elements from the original array in reverse order

  Pseudocode:

    -define method named reverse with an array as a parameter
      -reverse(array)

    -create a new array empty object
      -result = []

    -iterate over the original array
      -array.each << result

      -beginning from the last element of the array, assign each element in descending order to the new array object
      -return new object with reversed elements from the original array

Code
=end

# def reverse(arr)
# 	result_arr = []
#   return result_arr if arr == []
  
#   counter = arr.length  #=> 4

#   loop do 
#     result_arr << arr[counter - 1]
#     counter -= 1
#     break if counter == 0

#   end

#   result_arr
# end

# def reverse(arr)       #  Alternate solution second go around
#   result = []
#   index = -1

#   arr.each do |element|
#     result << arr[index]
#     index -=1
#   end
#   result
# end

def reverse(arr)        # further exploration each with object solution
  arr.each_with_object([]) {|each, ob| ob.prepend(each)}
   
end

 p reverse([1,2,3,4]) == [4,3,2,1]          # => true
 p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
 p reverse(['abc']) == ['abc']              # => true
 p reverse([]) == []                        # => true

 p list = [1, 3, 2]                      # => [1, 3, 2]
 p new_list = reverse(list)              # => [2, 3, 1]
 p list.object_id != new_list.object_id  # => true
 p list == [1, 3, 2]                     # => true
 p new_list == [2, 3, 1]





 # def reverse(array)   # LS SOLUTION
  # }
#   reversed_array = []
  
#   array.reverse_each {|element| reversed_array << element}

#   reversed_array
# end
