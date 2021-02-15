# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

=begin

Problem
  
  -create a fucntion that takes two integers arguments
  -the first argument will be a count and the second will be the first number of a sequence created by the method
  -the method will return an array with the same number of elements as the count argument
  -the values of each element in the returned arrary will be multiples of the starting number
  -assume that the value of the count argument will always be >= 0 
  -if the value is 0 return an empty array

Examples:

  -sequence(5, 1) == [1, 2, 3, 4, 5]        => 1 + 1 + 1 + 1 + 1 or (1 * 5)
  -sequence(4, -7) == [-7, -14, -21, -28]   => -7 + -7 + -7 + -7 or (-7 * 4)
  -sequence(3, 0) == [0, 0, 0]              => 0 + 0 + 0         or (0 * 3)
  -sequence(0, 1000000) == []

Data Structure

  Input  = integer
  Output = array of integers

Algorithm

  1) Create a function with two parameters
       -sequence(count, added_number)
  2) Create a new array object to store the result
       -result = []
  2a) Create a new variable to keep addition
       -running_total = 0
  3) Set count as the number of times added_number will be added to itself
       -loop 
         -reassign runnin_total to added_number plus iself upon each iteration
         -append each reassignment of added_number to result

  4) Return result        
=end

# def sequence(count, added_number)
#   result = []
#   running_total = 0
#   iteration = 0

#   return result if count == 0

#   loop do 
#   result << (running_total += added_number)
#   iteration += 1
#   break if iteration >= count
#   end

#   result
# end

# def sequence(count, multiple)       # Alternate Solution
#   result = []

#   1.upto(count) do |num|
#     result << num * multiple
#   end
#   result
# end

def sequence(count, start)  # alternate solution second go around
  result = []
  
  1.upto(count) do |number|
      result << start * number
  end
  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []










