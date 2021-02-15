# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

=begin
Problem
  
  -Create a method that takes an array of integers
  -It will multiply all the integers inside the array
  -It will divide the result of that multiplication by the value equal to the number of elements inside the original array
  -It will return the result of the division rounded to 3 decimal places
  -We can assume the array is not empty

Examples:

  -show_multiplicative_average([3, 5])                # => The result is 7.500
  -show_multiplicative_average([6])                   # => The result is 6.000
  -show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

Data Structure

  Input  = array
  Output = array

Algorithm

  -write a program with an array parameter
  -count the number of elements in the array
  -multiply all the numbers in the array together
  -divide the total product result by the value of the number of elements in the array
  -print the quotient result rounded to 3 decimal places

  Pseudocode

    -define method with array parameter
     -intialize a variable to store the value of the array size
     -multiply all the elements inside the array
     -divide the product by the number equal to size of the array
     -round the quotient result to 3 decimal places
     -return the rounded quotient result
    -end method definition  

Code
=end

# def show_multiplicative_average(array_of_int)
#   product = array_of_int.reduce(:*)
  
#   divide_result = product/(array_of_int.length).to_f
  
#   "The result is #{format('%.3f', divide_result)}"
# end

def show_multiplicative_average(arr)     #alternate solution second go around
  result = arr.reduce(:*).to_f/arr.size

  puts "The result is #{format("%.3f", result)}"
end

p show_multiplicative_average([3, 5]) #=> The result is 7.500
p show_multiplicative_average([6])    #=> The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) #=> The result is 28361.667

