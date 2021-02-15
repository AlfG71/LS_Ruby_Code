# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

=begin

Problem
  -create a method that takes an integer argument
  -it will return the number argument if it is even and has the same values in the first half of the number as the last half
  -otherwise it will return the number argument doubled

Examples:

  -twice(37) == 74          => (37 + 37) or (37 * 2)
  -twice(44) == 44          => double number returned the argument unchanged
  -twice(334433) == 668866  => (334433 + 334433) or (334433 * 2)
  -twice(444) == 888        => 444 * 2
  -twice(107) == 214        => 107 * 2
  -twice(103103) == 103103  => double number returned the argument unchanged
  -twice(3333) == 3333      => double number
  -twice(7676) == 7676
  -twice(123_456_789_123_456_789) == 123_456_789_123_456_789
  -twice(5) == 10

Data Structure

  Input  = integer
  Output = integer

Algorithm:

  1) Create a method that takes an integer argument
        -twice(num)
         -if num even and the digits in the first half of the number are the same as the digits in the second half
           -num
        -else 
           -num times 2 
=end

def twice(num)
  digits = num.to_s
  mid_point = digits.length/2
  if digits[0..(mid_point) - 1] == digits[(mid_point)..-1] && digits.length.even?
    num
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103     
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
