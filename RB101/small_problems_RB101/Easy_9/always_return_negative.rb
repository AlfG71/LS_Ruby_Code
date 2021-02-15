# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.


=begin

Problem

  -create a method with an integer parameter
  -return a the negative version of the integer argument unless it is 0 in which case just return 0

Examples:

  -negative(5) == -5
  -negative(-3) == -3
  -negative(0) == 0      # There's no such thing as -0 in ruby

Data Structures

  Input  = integer
  Output = integer

Algorithm

  -create a function that takes a number argument (num)
    -if num is positive
    	-num * -1
    -if num is negative
      -num
    -if num is zero
      -num	

=end

def negative(num)
  num == num.abs ? (num * -1) : num
end

# def negative(int)  # Alternate solution
# 	if int > 0 
# 		int * -1
# 	else
# 		int
# 	end
# end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby