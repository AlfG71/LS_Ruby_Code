# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

=begin
	
Problem: 

-Create a method that takes an Integer argument and returns an Integer that represents the value of the index of the first fibonacci number that has the number of digits indicated by the argument.
-So the argument number is equal to the first number in the fibonacci series that has that many digits in it (argument == 2 == index value of fibonacci number that has two digits)
	
Examples:

-find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
-find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 -55 89 144
-find_fibonacci_index_by_length(10) == 45
-find_fibonacci_index_by_length(100) == 476
-find_fibonacci_index_by_length(1000) == 4782
-find_fibonacci_index_by_length(10000) == 47847

Data Structures:

Input  = Integer
Output = Integer

Algorithm:

1) Create a method definition
  -find_fibonacci_index_by_length(int)
    -create a new variable to use for the helper method and return the array of fibonacci numbers

2) Create a helper method to figure out the fibonacci sequence 
  -fibonacci_sequence(int)
    -return an array of all the numbers in the sequence

3) Return array length value
  -since the first value is 1, the return value is the length of the array 

=end

# def fib_arr(num)              # alternate solution second time around
#   fibonnacci = [1, 1]

#   until fibonnacci[-1].digits.size >= num
#     fibonnacci << fibonnacci[-1] + fibonnacci[-2]
#   end

#   fibonnacci
# end

# def find_fibonacci_index_by_length(num)
#   result = fib_arr(num)

#   result.index(result.last) + 1
# end

# def fibonacci_sequence(num)
# 	fib = [1, 1]

# 	until fib[-1].digits.length >= num
# 		fib << fib[-1] + fib[-2]
# 	end

# 	fib
# end

# def find_fibonacci_index_by_length(int)
# 	fib_array = fibonacci_sequence(int)
 
#   fib_array.length
# end

def find_fibonacci_index_by_length(int)  #ALTERNATE LS SOLUTION
	first  = 1
	second = 1
	index  = 2

	loop do
		index += 1
		fibonacci = first + second  
		break if fibonacci.to_s.length >= int

		first  = second
		second = fibonacci
	end
	index
end



p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 p 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
# You may assume that the argument is always greater than or equal to 2.