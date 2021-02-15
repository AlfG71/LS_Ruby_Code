
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array

# def digit_list(integer)
#   integer.digits.reverse
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]


#   P (Understand the problem)
#     -Write a method that takes an argument called digit_list
#     -The argument is a positive integer
#     -The body of the method returns a list of the digits in the number argument

#   E (Examples)
#     -puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
#     -puts digit_list(7) == [7]                     # => true
#     -puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
#     -puts digit_list(444) == [4, 4, 4]             # => true

#   D (Data steuctures)
#     Input:
#       -Method definition
#       -Integer
#       -Boolean

#     Output:
#       -Array

#   A (Algorithm)
#     -Define a method called digit_list
#     -Set a method parameter for a positive integer
#     -Return an array of the positive integer argument

#   C (Code)
#     def digit_list(integer)
#       puts integer.digits.reverse
#     end
  
#     def digit_list(integer)
#       puts () = Array.new(integer)
#     end

# # Write a method that takes one argument, a positive integer, and returns a list of the digits in the number

