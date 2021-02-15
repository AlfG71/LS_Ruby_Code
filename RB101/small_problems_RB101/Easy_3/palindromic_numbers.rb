# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

=begin
  Problem: 
    -Create a method that takes an integer argument and returns true if the argument is a plaindrome (reads the   same backwards as forwards)
    -Return false otherwise  
  
  Examples:

  palindromic_number?(34543) == true
  palindromic_number?(123210) == false
  palindromic_number?(22) == true
  palindromic_number?(5) == true
  
  Data Structures:

  Input  = Integer
  Output = Boolean

  Algorithm:

  1) Create a method definition that takes an Integer argument
  2) Eavluate if the Integer reads the same backwards as forwards
    -convert integer into a string
    -reverse the string
    -compare if the reversed string is equal to the original integer string
  3) Return true if they are both equal
  4) Return false if they are not equal  

=end

def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
