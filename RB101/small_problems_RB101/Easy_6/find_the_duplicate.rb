# Given an unordered array and the information that exactly one value in the array occurs twice (every other value occurs exactly once), how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known to be in the array.

=begin

Problem
  
  -create a method that takes an array as an argument and checks every element within the array for duplicates
  -the method will return the duplicate value in the array  

Examples:

  -find_dup([1, 5, 3, 1]) == 1
  -find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
            38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
            14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
            78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
            89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
            41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
            55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
            85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
            40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
            7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

Data Structure
  Input  = array
  Output = integer

Algorithm

  -create a method with an array argument
  -evaluate the elements inside the array for their values
  -if there are any values that are exactly the same, have the method return those values

  Pseudocode

    -define a method with an array parameter
    -sort the array argument
    -iterate over each element in the array 
      -select the number if it is equal to the next number in the sequence
      -return the value

Code                 
=end

# def find_dup(arr)
#   duplicate_number = 0
#   sorted_arr = arr.sort

#   sorted_arr.each_with_index do |num, index|
#     if sorted_arr[index] == sorted_arr[index + 1]
#       duplicate_number = num
#     end
#   end
    
#   duplicate_number
# end

# def find_dup(arr)           #alternate solution second go around
#   result = arr.select {|number| arr.count(number) == 2}
#   result.pop
# end

def find_dup(arr)  #alternate solution 3 second go around
  double = []

  arr.each do |number|
    double << number
    if double.count(number) == 2
      break
    end
  end
  double.pop
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
            38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
            14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
            78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
            89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
            41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
            55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
            85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
            40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
            7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
