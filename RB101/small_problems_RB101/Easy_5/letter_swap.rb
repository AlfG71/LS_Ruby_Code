# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

=begin
Problem

-Create a method that takes a string argument of letters and spaces and returns a string of the same value with the first and last letter of each individual word swapped
-Assume every word contains at least one letter and that each string is valid and contains just letters and spaces

# Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Data

Input = string
Output = string

Algorithm

1) Create a method definition
  -swap(str)

2) Separate all individual words into elements
  -str.split

3) Swap the first letter for the last letter in each individual word by reassignment
  -str[0] = str[-1] and str[-1] = str[0]  

4) Join all the individual words back into one string
  -str.split.join

5) Return new string  

=end

def swap(str)
  result = str.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
