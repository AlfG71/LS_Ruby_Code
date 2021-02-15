# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

=begin
  Problem:

  Create a method that takes one String argument
  The method will return a new string with the same length and words as the original string
  The new string will have the words in reverse order (backwards)
    If a word was first in the sentence in the argument, it will be returned last in the new string and viceversa
  It will return an empty string if the original argument is an empty string


Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
The tests above should print true.  

Data Structures:

  Input  = String
  Output = String

Algorithm

1) create a method definition with a string argument reverse_sentence(str)
2) break down the string into separate words
3) place the separated words into an array object
4) reverse the words in the array
5) place the reversed words out of the array 
6) return the reversed wrods String
 
=end

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


