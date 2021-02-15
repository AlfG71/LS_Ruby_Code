# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

=begin
  Problem:
    -create a method that takes a String argument
    -It will return true if the argument is a palindrome (reads the same forwards and backwards)
    -Will return false otherwise
    -Case and character sensitive

  Examples:
  
  -palindrome?('madam') == true
  -palindrome?('Madam') == false          # (case matters)
  -palindrome?("madam i'm adam") == false # (all characters matter)
  -palindrome?('356653') == true

  Data Structure:

  Input  = String
  Output = Boolean

  Algorithm:

  1) create a method definition with a String parameter
  2) Evaluate the String argument to see if it reads the same backwards as it does forwards
    -return true if string == string.reverse
  3) return false if it does not  

=end

# def palindromic_arr?(arr)
#   arr == arr.reverse
# end

# puts palindromic_arr?([1, 2, 3]) == false           #Further exploration for Array
# puts palindromic_arr?([1, 2, 1]) == true
# puts palindromic_arr?(['a', 'a', 'a']) == true

def palindrome?(str)
  str == str.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

#Further Exploration

def palindrome?(structure)
  structure == structure.reverse
end

p palindrome?([1, 2, 3, 2, 1])
p palindrome?(['hi', 'there', 'there', 'hi'])
p palindrome?(['hello','you', 'hello'])
p palindrome?([1, 'hi', 'hi', 1])

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true