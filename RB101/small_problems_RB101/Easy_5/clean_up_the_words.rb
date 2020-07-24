# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

=begin
Problem

-write a method that takes a string as an argument
-the string will be all lowercased words with some non-alphanumeric characters
-the method will the string with all the non-alphanumeric characters replaced with spaces
-if there are non-alphanumeric characters ocurring in a row, only one space should be used to replace them
-the result should never have consecutive spaces

Examples:
 
 cleanup("---what's my +*& line?") == ' what s my line '

Data
  Input  = string
  Output = string

Algorithm
  -define a method with an string parameter
  -search the string for non-alphanumeric characters
    -remove each non-alphanumeric character with a space
      -if there are more than one alpha-numeric characters together
      	-replace those with just one space
  -return the original string with all the non-alphanumeric characters replaced by a single space

Code
=end

def cleanup(str)
   str.gsub(/\W+/, ' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '