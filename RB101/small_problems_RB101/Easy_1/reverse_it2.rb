# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

=begin
  Problem: 
  Create a method that takes a string argument of at least one word
  The method will return the words in the argument that have at least 5 characters reversed
  Words that are shorter than 5 characters in length will be returned unchanged
  Spaces should be included in the final string object when there is more than one word in the argument

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

  Data Structure:
    Input  = String
    Output = String

    Algorithm
    1) Create a method definition with a string parameter reverse_words(str)
    2) Create a new array with the word of the argument inside
    3) Create a new empty array 
    4) iterate over each word in the array object
        -if the word is longer than 4 letters
          -reverse the word and append to empty array
        -otherwise, append word to empty array  
      c) transform the individual words in the array into a new string
    5) Return the reversed string      

=end

def reverse_words(str)
  string_array = str.split
  result = []

  string_array.each do |word|
    if word.length >= 5
      result << word.reverse
    else
      result << word
    end 
  end
    result.join(' ')
end

puts reverse_words('Professional')          == 'lanoisseforP'
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
puts reverse_words('Launch School')         == 'hcnuaL loohcS'

