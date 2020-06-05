def multiply(num1, num2)
	num1 * num2
end

def square(num)
  multiply(num, num)
end

def to_the_nth(exp, num)
	multiply(num**exp, 1)
end

puts square(5) #== 25
puts square(-8) #== 64

# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

# Example:

# square(5) == 25
# square(-8) == 64