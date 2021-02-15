# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

=begin

Problem

  -create a method with a string parameter
  -print out a new string with the consonants of the original string printed twice and everything else printed once

Examples:

  -double_consonants('String') == "SSttrrinngg"
  -double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
  -double_consonants("July 4th") == "JJullyy 4tthh"
  -double_consonants('') == ""

Data Structure

  Input  = string
  Output = string

Algorithm

  1) Create a method that takes a string argument
      -double_consonants(str)

  2) Create a constant variable of consonants (CONSONANTS)

  3) Create a new empty string object to collect new values
       -resulting_string = ''

  3) Iterate over the string characters to check their value (char)
       -if CONSONANT.include?(char)
         -char + char

  4) Return new String with the double consonant letters included

=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  resulting_string = ''

  str.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      resulting_string << char * 2
    else 
      resulting_string << char
    end
  end
  resulting_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
