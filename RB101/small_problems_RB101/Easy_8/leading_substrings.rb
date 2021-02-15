# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

=begin
Problem

  -Create a method that takes a string argument
  -It will create a list of all the substrings of the original string in a new array starting at the beginning of the original string
  -It will return the new array with the listed strings arranged in order from shortest length to longest

Examples:

  -leading_substrings('abc') == ['a', 'ab', 'abc']
  -leading_substrings('a') == ['a']
  -leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Data Structure

  Input  = string
  Output = string

Algorithm

  -create a method that takes a string argument
  -create a new empty collection object
  -iterate over the argument
  -create substrings from the original string
  -each substring will have one more string element than the previous one

  Pseudocode

    -create method definition
      -leading_substrings(str)
    -create new empty Array to collect substrings
      -result = []
    -convert str into separate characters and assign to new variable
      -array_of_characters = str.chars
    -iterate over array_of_characters |char|
      -add the first element of array_of_characters as a new element to result
      -add the first and second element of the string as a new element to result
      -add the first, second and third element of the string as a new element to result
      -stop when the original string has no more elements to iterate
    -return the new array with the substring elements

=end

# def leading_substrings(str)
#   result = []

#   1.upto(str.length) do |length|
#     result << str[0, length]
#   end
  
#   result
# end

# def leading_substrings(str)            #LS student solution
#   str.chars.map.with_index do |char, idx|
#       str[0..idx]
#   end
  
# end

# def leading_substrings(str)   #Alternate Solution
#   characters = ''
#   substrings_arr = []

#   result = str.chars.each do |char|
#     characters += char
#     substrings_arr << characters
#   end
#   substrings_arr
# end

# def leading_substrings(str)
#   result = []

#   1.times do |_|
#     1.upto(str.size) do |length|
#       result << str[0, length]
#     end
#   end

#   result
# end

def leading_substrings(str)  #alternate solution second go around
  result = []

  0.upto(0) do |index|
    1.upto(str.size) do |length|
      result << str[index, length]
    end
  end
  result
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
