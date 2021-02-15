# Write a method that takes a string, and returns a new string in which every character is doubled.

=begin
 
Problem

  -create a method with a string parameter
  -print a new string with each character of the original string printed twice 
  -if the argument is empty, return an empty string

Examples:

  -repeater('Hello') == "HHeelllloo"
  -repeater("Good job!") == "GGoooodd  jjoobb!!"
  -repeater('') == ''

Data Structure

  Input  = string
  Output = string

Algorithm

  1) Create a method that takes string argument
       -repeater(str)

  2) Iterate over each character in the string (char)  
       -double each character in the output

  3) Return the new String       

=end

# def repeater(str)
#   str.chars.map {|char| char + char}.join
# end

# def repeater(str)   #alternate solution second go around
#   result = ''

#   str.each_char do |char|
#     result << char*2
#   end
#   result
# end

def repeater(str)   
  str.chars.map {|char| char*2}.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
