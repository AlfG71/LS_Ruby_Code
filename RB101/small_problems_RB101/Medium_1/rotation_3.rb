# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as an argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

=begin

Problem
  -Create a method that takes a number argument and returns the maximum rotation of the argument
  -Maximum rotation is when you rotate the number to the left while holding it in place and rotating the next numbers, increasing the amount of numbers held in place on each rotation

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

-Start with:
735291  
  rotation one => 352917 moves [0] to [-1] and shifts the rest of the numbers 352917
  rotation two => hold the 3 in place and rotates the rest moves [1] to [-1] shifts the rest 329175
  rotation three => holds 3 and 2 in place moves [2] to [-1] and shifts the rest 321759
  rotation four => holds 3, 2 and 1 in place moves [3] to [-1] shifts the rest 321597
  rotation five => holds 3, 2, 1 and 5 in place moves [4] to [-1] 321579

=end
def rotate_array(arr)      # LS solution
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, rotations)
  array_of_digits = number.to_s.chars

  array_of_digits[-rotations..-1] = rotate_array(array_of_digits[-rotations..-1])

  array_of_digits.join.to_i
end


def max_rotation(number)
  number_of_digits = number.to_s.size
  number_of_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end

  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

#solution worked with Vic

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(int, n)
#   new_number = int.to_s.chars
  
#   rotated_number = new_number[0..-n-1] + rotate_array(new_number[-n..-1])
  
#   rotated_number.join.to_i
# end

# def max_rotation(int) 
#   rotate_size = int.to_s.size
#   loop do
#     break if rotate_size == 1
#     int = rotate_rightmost_digits(int, rotate_size)
#     rotate_size -= 1
#   end
  
#   int
# end


# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845