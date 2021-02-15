# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

=begin

Problem

  -write a function that takes a string and returns true if all the letter characters in the string are uppercase
  -it does not take into account non letter characters like numbers and punctuation signs
  -it returns false if not all of the letter characters are uppercase

Examples:

  -uppercase?('t') == false           => character lowercase
  -uppercase?('T') == true            => character uppercase
  -uppercase?('Four Score') == false  => not all characters uppercase
  -uppercase?('FOUR SCORE') == true   => all chars upcase
  -uppercase?('4SCORE!') == true      => ignores non-alphanumeric chars
  -uppercase?('') == true

Data Structures

  Input  = String
  Output = Boolean

Algorithm

  1) Create a method with a string parameter
       -uppercase?(str)
   
  2) Iterate over str
       -if ALL alphabetic characters are uppercase
    	   -return true
       -else
         -return false
=end

UPPERCASE_CHARS = ("A".."Z").to_a

# def uppercase?(str)                                       # Alternate solution
#   arr_of_chars = str.gsub(/\d/, '').gsub(/\W/, '').chars
  
#   arr_of_chars.all? {|char| UPPERCASE_CHARS.include?(char)}
# end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
