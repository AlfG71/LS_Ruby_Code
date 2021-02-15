# Write a method that can rotate the last n digits of a number. For example:

=begin

Problem  

  -create a function that takes a number and rotates the last n digits
  -rotating just one digit results in the original number being returned
  -can use rotate method from previous example
  -assume n is always a positive integer

Example: 

  -rotate_rightmost_digits(735291, 1) == 735291  => same number
  -rotate_rightmost_digits(735291, 2) == 735219  => take [-2] and insert into [-1]
  -rotate_rightmost_digits(735291, 3) == 735912  => take [-3] and insert into [-1]
  -rotate_rightmost_digits(735291, 4) == 732915  => ...
  -rotate_rightmost_digits(735291, 5) == 752913
  -rotate_rightmost_digits(735291, 6) == 352917

Data Structure

  Input  = integer
  Output = integer

Algorithm

  1) Create a method with 2 number arguments
       -rotate_rightmost_digits(number, rotations)
  1a) Convert number into digits
        -array_of_digits = number.digits.reverse
  2) Take the number of rotations and set it as an argument for the negative index in number
       -array_of_digits << array_of_digits.delete_at(-rotations)
  3) Return array_of_digits       

=end

# def rotate_rightmost_digits(number, rotations)  # My Solution
#   array_of_digits = number.to_s.chars

#   array_of_digits << array_of_digits.delete_at(-rotations)

#   array_of_digits.join.to_i  
# end

def rotate_array(arr)      # LS solution
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, rotations)
  array_of_digits = number.to_s.chars

  array_of_digits[-rotations..-1] = rotate_array(array_of_digits[-rotations..-1])

  array_of_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
