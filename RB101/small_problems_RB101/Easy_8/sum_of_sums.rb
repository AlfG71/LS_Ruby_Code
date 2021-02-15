# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.


=begin
Problem
  -create a method that takes an array of integers
  -it will return the compounded sum of each element in the array
  -assume the array always contains at least one number

Examples:
 
  -sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
  -sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3)   -# -> (36)
  -sum_of_sums([4]) == 4
  -sum_of_sums([1, 2, 3, 4, 5]) == 35

Data Structure

  Input  = array
  Output = integer

Algorithm

  -write a program that takes an array of numbers
  -take the first number and turn it into the first result
  -evaluate the elements within the array increasing the number of element added by one
  -add the result of each iteration to the first result
  -print the first result

  Pseudocode

    -define a method with an array parameter
      -sum_of_sums(arr)
    -create a new collection object
      -number_groups = [] 
    -iterate over arr (num)
      -on each iteration
        -starting at the first index value 
          append num in an Array into number_groups and finish iteration
        -start iteration again but end it at index value 1
          append num at initial index value and num at index value 1 in an Array into number_groups
        -repeat iteration until the last index value has been added to the Array in number_groups
    -add each individual Array in number_groups
    -return the sum of that addition  

Code
=end

# def sum_of_sums(arr)
#   number_groups = []

#   0.upto(0) do |idx|
#     1.upto(arr.length) do |num|
#       number_groups << arr[idx, num]
#     end
#   end
#   number_groups.map do |sub_arr|
#     sub_arr.sum
#   end.sum
# end

def sum_of_sums(arr)  # alternate solution second go around
  running_total = 0
  sum_arr = []
  
  0.upto(0) do |index|
    1.upto(arr.size) do |length|
      sum_arr << arr[index, length].sum
    end
  end

  sum_arr.sum
end

# def sum_of_sums(arr)  # LS Solution
#   total   = 0
#   sub_sum = 0

#   arr.each do |num|
#     sub_sum += num
#     total += sub_sum
#   end

#   total
# end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35


























# require 'pry'
# def sum_of_sums(arr)
# 	result = 0
#   cummulative_sum = []

#   arr.each_with_index do |number, index|
#   	cummulative_sum << arr[index]
#   	result = result + cummulative_sum.sum 
#   end

# #   result
# # end


# def sum_of_sums(arr)
#   result = []

#   1.upto(arr.length) do |num|
#     result << arr[0, num].sum

#   end

#   result.sum
# end

























