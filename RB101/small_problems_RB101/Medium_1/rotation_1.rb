# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

=begin

Problem
  
  -create a function that takes an array argument and moves the first element of the array into the end of the array
  -the original array should not be mutated so return a new object
  -we can't use Array#rotate or Array#rotate! methods
  -no mutating methods

Example:

  -rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7] => arr[0] becomes arr[-1] shifting the rest of the elements one space
  -rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
  -rotate_array(['a']) == ['a']
  -
  -x = [1, 2, 3, 4]
  -rotate_array(x) == [2, 3, 4, 1]   # => true
  -x == [1, 2, 3, 4]                 # => true

Data Structures

  Input  = array
  Output = array

Algorithm

  1) Create a method that takes an array argument of multiple elements
       -rotate_array(arr)
  2) Create a new array object to collect and return the result
       -shifted_arr = []      
  3) Iterate over arr (num)
       -arr.each
         -append each num into shifted_array
  4) Take off the first num of shifted_array and reassing its value to the last element
       -shifted_array << shifted_array.shift
  5) Return shifted_array

=end

# def rotate_array(arr)
#   shifted_array = []

#   arr.each {|num| shifted_array << num}

#   shifted_array << shifted_array.shift
# end

# def rotate_array(arr)      # LS solution
#   arr[1..-1] + [arr[0]]
# end

def rotate_array(arr)        #alternate solution second go around
  arr[1, arr.size] << arr[0]
end

def rotate_string(str)       #further exploration
  result = str.chars
  rotate_array(result).join
end

def rotate_number(num)       #further exploration
  result = num.digits.reverse
  rotate_array(result).join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
p rotate_string('Alfonso') == 'lfonsoA'
p rotate_number(12345) == 23451

x = [1, 2, 3, 4]
p x.object_id
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]  
p x.object_id
