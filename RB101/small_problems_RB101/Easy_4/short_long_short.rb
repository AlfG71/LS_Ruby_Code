# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

=begin
  Problem:
    - Create a method that takes two string arguments and determines which of the two arguments is longer
    - It returns a new string consisting of the two arguments concatenated
    - The shorter string first, concatenated with the longer followed again by the shorter string 
    - Assume all the arguments are of different lengths

  Examples:

   -short_long_short('abc', 'defgh') == "abcdefghabc"
   -short_long_short('abcde', 'fgh') == "fghabcdefgh"
   -short_long_short('', 'xyz') == "xyz"

  Data Structures:

   Input  = String
   Output = String
  
  Algorithm:

  1) create a method definition short_long_short(str1, str2)
  2) evaluate which string argument is longer
    -str1.length < str2.length
  3) concatenate the shorter string with the longer string with the shorter string once more
    -str1 + str2 + str1 
  4) return concatenated string 

=end

def short_long_short(str1, str2)
  a = str1.length
  b = str2.length

  a > b ? (str2 + str1 + str2) : (str1 + str2 + str1)
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
