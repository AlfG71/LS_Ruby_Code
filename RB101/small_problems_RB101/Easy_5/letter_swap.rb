# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

=begin
Problem

-write a method that takes a string of words as an argument
-it will return the string of words with the first and last letters of every word swapped

# Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Data

Input = string
Output = string

Algorithm

-take a method with a string parameter
  -iterate over each word in the string and place into a new collection object
    -iterate over the elements in the new object
      -if the word has more than one letter take the first and last letters of the word and swap their places
    -create a new string from the collection object
-return the evaluated resulting string with swapped letters

Code
=end

def swap(string)
  swapped_array = string.split # array of words
  first_letter = ''
  last_letter = ''
  resulting_string = []
  
  swapped_array.each do |word|
    if word.length < 2
      resulting_string << word
    else
      first_letter = word.slice!(0)
      last_letter = word.slice!(-1)
      resulting_string << last_letter + word + first_letter
    end
  
  end
  resulting_string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'