# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

=begin
Problem
  -create a method that takes a string argument
  -the method will return the next to the last word in the original string
  -assume the input string will always contain 2 words

Examples:

  -penultimate('last word') == 'last'
  -penultimate('Launch School is great!') == 'is'

Data Structure

  Input  = string
  Output = string

Algorithm

  -create a method with a string parameter
  -evaluate the string for words 
  -return the next to the last word from the original string

  Pseudocode

    -define method with a string parameter
    -split the string into individual words
    -return the penultimate word from the original string
    -end the method definition

Code
=end

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'