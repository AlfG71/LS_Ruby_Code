# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

=begin

Problem:

- create a method that takes a string as an argument of all lowercased words and some non-alphabetic characters
-it will return a new string with all the non-alphabetic replaced by empty spaces
-there cannot be consecutive empty spaces in the new string

Examples:

-cleanup("---what's my +*& line?") == ' what s my line '

Data Structures:

Input  = String
Output = String

Algorithm:

1) create a method definition
  -cleanup(str)

2) create a new collection object for the argument characters
  -arr_of_chars = str.chars

3) iterate over the collection object selecting only the characters that appear in the alphabet
  -arr_of_chars.select {|char| ('a'..'z').include?(char)}

4) convert the new array into a string

5) return the new string

=end

# def cleanup(str)
#   arr_of_chars = str.chars
#   result = []
  
#   arr_of_chars.each do |char| 
#   	if ('a'..'z').include?(char)
#   		result << char
#   	else 
#   		result << ' '
#   	end
#   end

#   result.delete_if.with_index {|char, idx| result[idx] == result[idx + 1] }.join
# end    

# ALPHABET = ('a'..'z').to_a

# def cleanup(str)
#   arr_of_chars = str.chars
#   result = []

#   arr_of_chars.each do |char|
#     if ALPHABET.include?(char)
#       result << char
#     else
#       result << ' ' unless result.last == ' '
#     end
#   end
#   result.join
# end

def cleanup(str)
  str.gsub(/[^a-z]/, ' ').squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '


# Alternate answer regexp


# def cleanup(str)
#    str.gsub(/\W+/, ' ')
# end
