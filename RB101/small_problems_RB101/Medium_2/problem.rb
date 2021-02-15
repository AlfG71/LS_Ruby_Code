# Create a function named divisors/Divisors that takes an integer n > 1 and returns an array with all of the integer's divisors(except for 1 and the number itself), from smallest to largest. If the number is prime return the string '(integer) is prime' (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
=begin
input: integer
output: array of integers or a string

rules:
-argument will be greater than 1
-return an array of all the divisors escept for 1 and the number argument
-the returned array will be sorted from smallest to largest
-if the number argument is a prime number the method will return a string  


Example:
divisors(12) # should return [2,3,4,6]
divisors(25) # should return [5]
divisors(13) # should return "13 is prime"

Algorithm:
-create a new empty array to collect our return value
-create helper method for prime?  or use built in prime method
-iterate from 2 upto the argument - 1
  -on each iteration
    -push each number that is evenly divisible by the argument into a new array
-return the new array 
=end

def prime?(num)
  return false if num == 1
  (2..num-1).none? {|n| num % n == 0}
end

def divisors(num)
  return "#{num} is prime" if prime?(num)
  result =  []

  2.upto(num - 1) do |number|
    result << number if num % number == 0
  end

  result
end

p divisors(12) # should return [2,3,4,6]
p divisors(25) # should return [5]
p divisors(13) # should return "13 is prime"

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration

# From the above, you'll need to calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months




# We want to generate all the numbers of three digits where:

# genereate ALL numbers of 3 digits && the sum of all their digits == 10
# digits are in ascending order (may have duplicates)

#input: 2 arguments: the sum of digits value,  the length of the digits
#output: array of 3 values: [the total num of possible numbers (length of array), min of array, max of array]

# the sum of their digits is equal to 10.
# their digits are in increasing order (the numbers may have two or more equal contiguous digits)
# The numbers that fulfill the two above constraints are: 118, 127, 136, 145, 226, 235, 244, 334

# Make a function that receives two arguments:
# the sum of digits value
# the desired number of digits for the numbers
# The function should output an array with three values: [1,2,3]

# 1 - the total number of possible numbers
# 2 - the minimum number
# 3 - the maximum number

# The example given above should be:

# find_all(10, 3) == [8, 118, 334] the array was ~[118, 127, 136, 145, 226, 235, 244, 334]

# If we have only one possible number as a solution, it should output a result like the one below:

# find_all(27, 3) == [1, 999, 999] == [[999].length, [999].min, [999].max]

# If there are no possible numbers, the function should output the empty array.
# find_all(84, 4) == [] #return empty array when theres no possible solutions

# The number of solutions climbs up when the number of digits increases.
# find_all(35, 6) == [123, 116999, 566666]
# Features of the random tests:

# Number of tests: 112
# Sum of digits value between 20 and 65
# Amount of digits between 2 and 17

=begin
input: two integers
output: array of 3 integers  
1 - the total number of possible numbers
2 - the minimum number
3 - the maximum number

rules:
-digits are in increasing order (the numbers may have two or more equal contiguous digits)

Algorithm:
Problem 1:
-find all the numbers with a number of digits 'k'

Problem 2:
-selec the numbers that have digits in increasing order
-select the numbers whose digits sum up to argument 'n'
-select max number
-select min
-add up all the elements frmo the selected numbers (this value  will be the first element in the returned array)

(1..9)(3).permutation 
(1..9)(3).repeated_permutation

# find_all(10, 3) == [8, 118, 334] the array was ~


[118, 127, 136, 145, 226, 235, 244, 334]

Algorithm:

Problem 1: find all the cominbations with the length of k
  from 1 to 9 find all combinations based on the length of k
  permutations = returns nested array
    
Problem 2: find all the numbers in ascending order
  select permutations that are in asending order
  reassign to permutations
    
Problem 3: find all the numbers sum that equal to n
  select permuations and find all the numbers sum that are equal to n  
  reassign to permutations
 
Problem 4: transform all permutations into digits
  reassign to permutations
  
Problem 5: find and return an array the length of permutations, the minimum, and maximum

=end

# def true_sum?(num, sum)
#   num.digits.sum == sum
# end

# def increasing_digits?(num)
#   digits = num.digits.reverse
#   current_number = [0]

#   digits.each do |num|
#     if num >= current_number.last
#       current_number[0] = num
#       next
#     else
#       return false
#     end
#   end
  
#   true
# end

# def find_all(n, k)
#     matching_numbers = []
#     starting_number = ('1' + ('0'*(k - 1))).to_i  # k = 3 100-999, 4 1000-9999
#     ending_number = ('9' + ('9'*(k-1))).to_i
#     result = []

#     starting_number.upto(ending_number) do |num|
#       matching_numbers << num if true_sum?(num, n) && increasing_digits?(num)
#     end

#     return result if matching_numbers.empty?
#     result = [matching_numbers.size, matching_numbers.min, matching_numbers.max]
# end

# def find_all(n, k)
#   permutations = (1..9).to_a.repeated_permutation(k).to_a
#   final_arr = permutations.select{|arr| arr == arr.sort && arr.sum == n}.map {|arr| arr.join.to_i}
#   return [] if final_arr.empty?
#   [final_arr.length, final_arr.min, final_arr.max]
# end

# p find_all(10, 3) #== [8, 118, 334]
# p find_all(27, 3) #== [1, 999, 999]
# p find_all(84, 4) #== []
# p find_all(35, 6) #== [123, 116999, 566666]

# n = 5;

# st = "This is an example string";

# return value:
# Thisi
# sanex
# ample
# strin
# g

# def string_breakers(n, st)
#   stripped_str = st.gsub(' ', '')
#   starting_count = 0
#   result = ''

#   n.times do |_|
#     result << stripped_str[starting_count, n] + "\n"
#     starting_count += n
#   end
#   if result[-2] == "\"
#     result = result[0..result.size-2]
#   end
#   result
# end

# p string_breakers(5, "This is an example string")

=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

Example 1:
 - Input "abab"
 - Output: True
 - Explanation: It's the substring 'ab' twice.

Example 2:
 - Input: "aba"
 - Output: False

 Algorithm: 
 -iterate over string to get substrings that are half the size of the argument
 -multiply times two and check to see if they match
 -return true if all the letters in the string are the same
=end

# def repeated_substring(str)
#   substring = ''
#   iteration_number = str.size/2

#   str.chars.each do |char|
#     substring << char
#     return true if substring * str.size == str
#     break if substring.size == iteration_number
#   end

#   substring * 2 == str ? true : false
# end

# p repeated_substring('abab') == true
# p repeated_substring('aba') == false
# p repeated_substring('aabaaba') == false
# p repeated_substring('abaababaab') == true
# p repeated_substring('abcabcabcabc') == true
# p repeated_substring('aaaaa') == true



# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
=begin
  input: integer
  output: integer number of multiplications from the argument that return a single digit
  
  rules: 
  -return one if its a single digit argument
  -return one if there's a digit with a value of 0
  
  questions: 
  -multiplicative persistence = number of times multiplying the number digits will return a single digits

Examples:
# #persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  # and 4 has only one digit
# 
# #persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
#                   # 1*2*6=12, and finally 1*2=2
# 
# #persistence(4) # returns 0, because 4 is already a one-digit number

Algorithm:
-convert the number into digits
-multiply the digits until the product size is equal to 1
  -running_product
  -mult_times to keep track of the number of times being multiplied
-return mult_times

=end

# p persistence(39) == 3
# p persistence(999) == 4
# p persistence(4) == 0
# p persistence(10000) == 1
# p persistence(130498) == 1
# p persistence(234) == 2
# p persistence(9899999) == 3



# def prime?(num)
#   return false if num == 1
#     (2...num).none? {|n| num % n == 0}
# end

# def find_primes(num1, num2)
#   result = []

#   num1.upto(num2) do |number|
#     result << number if prime?(number) 
#   end
#   result
# end

# p find_primes(3, 10) == [3, 5, 7]
# p find_primes(11, 20) == [11, 13, 17, 19]
# p find_primes(100, 101) == [101]
# p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
# p find_primes(1, 2) == [2]  #*Please note that in the video, Conrad’s solution to this test case includes the integer 1, but it should only include the integer 2 because 1 is not a prime number. Thanks to Christian L. for this disclaimer.








# def divisible_sum_pairs(arr, divisor)
#   result = []
  
#   0.upto(arr.size - 2) do |first_index|
#     (first_index + 1).upto(arr.size - 1) do |second_index|
#       pair = [arr[first_index], arr[second_index]]
      
#       if pair.sum % divisor == 0 && pair[0] < pair[1]                        ### tried adding && arr[first_index] < arr[second_index] but it did not work
#         result << pair
#       end
#     end
#   end

#   result.size    # instead of using a counter, I just added up the number of pairs that were appended given the condition, and returned that
# end

# p divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) #== 5
# p divisible_sum_pairs([8, 10], 2) == 1
# p divisible_sum_pairs([5, 9, 10, 7, 4], 2) #== 4
# p divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) #== 15




