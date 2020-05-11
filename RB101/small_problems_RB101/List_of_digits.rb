# List_of_digits

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Casual pseudo code:
# -Method with one argument
# -The argument is a positive integer
# -The method gives us a list of the integer/s in the argument

# Formal pseudo code:
# START
# -DEF a method with one argument
# -SET argument as positive integer
# -APPLY method that returns the argument into a list (array) of all/the the integer/s
# -END method

def digit_list(int) # My solution, I'm confused because of the solution not equaling the original problem question
	[int].to_s.split
end

# def digit_list(number)   #Submitted by Stephen Moore
#   numbers = number.to_s.split('')
#   numbers.map { |num| num.to_i}
# end

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end

# def digit_list(number)          #LS code
#   number.to_s.chars.map(&:to_i)
# end
 
puts digit_list(12345) #== [1, 2, 3, 4, 5]     # => true
puts digit_list(7) #== [7]                     # => true
puts digit_list(375290) #== [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) #== [4, 4, 4]             # => true

