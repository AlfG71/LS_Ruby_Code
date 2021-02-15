# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

=begin
  Problem:

    - create a method that takes one number as an argument
    -The method will search for all the numbers starting at 1 up to the number argument and select the ones that are multiples of 3 or 5
    -It will return the sum of all the numbers selected	

	Examples:

	-multisum(3) == 3
  -multisum(5) == 8
  -multisum(10) == 33
  -multisum(1000) == 234168

  Data Structures:

    Input  = Integer
    Output = Integer

  Algorithm:

  1) Create a method definition multisum(num)
  2) Create a new collection object arr = []
  3) Count from 1 up to the number argument and store all the numbers in the new array arr
    -1.upto(num) << arr
  4) Select the numbers that are multiples of 3 or 5  
    -arr.select
  5) return the sum of the selected numbers  
    -arr.select.sum
=end

# def multisum(num)     #FURTHER EXPLORATION WITH REDUCE METHOD
# 	result = []
# 	1.upto(num) {|all_numbers| result << all_numbers}
# 	result.select {|multiples| multiples % 3 == 0 || multiples % 5 == 0}.reduce(:+)
# end

def multisum(num)
	result = []
	1.upto(num) {|all_numbers| result << all_numbers}
	result.select {|multiples| multiples % 3 == 0 || multiples % 5 == 0}.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
