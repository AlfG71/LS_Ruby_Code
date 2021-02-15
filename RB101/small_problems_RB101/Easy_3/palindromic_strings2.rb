# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

=begin
	Problem:
    -create a method that takes a String as an argument
    -It will evaluate if the String is a palindrome and return true if it is
    -It will return false otherwise
    -It is case sensite and ignore all non-alphanumeric characters 

	Examples:

  real_palindrome?('madam') == true
  real_palindrome?('Madam') == true           # (case does not matter)
  real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
  real_palindrome?('356653') == true
  real_palindrome?('356a653') == true
  real_palindrome?('123ab321') == false

  Data Structures:

  Input  = String
  Output = Boolean

  Algorithm:

  1) create a method definition that takes a string as an argument
  2) convert all the characters into lower case
  3) iterate over the string and get rid of non-alphanumeric characters
  4) check to see if the resulting string reads the same backwards and forwards
  5) return true if it is a palindrome, false otherwise

=end

#
# def real_palindrome?(str)
# 	word = str.scan /[[:word:]]+/
#   p word.join.downcase == word.join.downcase.reverse
# end
        																									#OR  LS solution
# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end

def real_palindrome?(str)
  return true if str == str.reverse
  result = []

	str.each_char do |char|
    result << char if ('a'..'z').include?(char.downcase)
	end
	result.join.downcase.reverse == result.join.downcase
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
